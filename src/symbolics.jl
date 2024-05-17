#=
Author: Jerome Guterl (guterlj@fusion.gat.com)
 Company: General Atomics
 CoordinatesSystems.jl (c) 2024
 =#

import Symbolics: Num, Differential, expand_derivatives, build_function, RuntimeGeneratedFunctions, simplify
# operation vector 𝐯 = f * 𝐮 ,𝐯 = 𝐮 /f
Base.:*(f::U, v::T) where {S,U<:Union{Array,Real,Num},T<:AbstractCSVector{S}} = PVector{S}((getproperty(v, fn) isa Missing ? missing : getproperty(v, fn) .* f for fn in fieldnames(T))...)
Base.:/(f::U, v::T) where {S,U<:Union{Array,Real,Num},T<:AbstractCSVector{S}} = PVector{S}((getproperty(v, fn) isa Missing ? missing : getproperty(v, fn) ./ f for fn in fieldnames(T))...)
struct SymbolicFunction{F}
    expr
    args
    f::F
end
Base.iszero(::SymbolicFunction) = false
getfield_(v::SymbolicFunction, i) = v
Base.show(io::IO, f::SymbolicFunction) = print(io, f.expr)
Base.show(io::IO, ::MIME"text/plain",f::SymbolicFunction) = print(io, f.expr)
(f::SymbolicFunction)(args...) = compute!(f, args...)
compute!(f::SymbolicFunction, args...) = compute!(f.f, args...)
compute!(vf::Vector{<:SymbolicFunction}, args...) = [compute!(f.f, args...) for f in vf]
Base.length(::SymbolicFunction) = 1
Base.size(::SymbolicFunction) = 1
Base.iterate(s::SymbolicFunction, args...) = iterate([s], args...)
build_symbolic_function(expr, args...;) = SymbolicFunction(expr, args, build_function(expr, args...; expression=Val{false}))

(d::Differential)(f::SymbolicFunction) = build_symbolic_function(expand_derivatives(d(f.expr)), f.args...)
(d::Differential)(v::V) where {S,V<:AbstractCSVector{S}} = get_base_type(V)((getproperty(v, fn) isa Missing ? missing : d(getproperty(v, fn)) for fn in fieldnames(V))...)
expand_derivatives(v::V) where {S,V<:AbstractCSVector{S}} = get_base_type(V)((getproperty(v, fn) isa Missing ? missing : expand_derivatives(getproperty(v, fn), true) for fn in fieldnames(V))...)
build_symbolic_function(v::V, args...) where {S,V<:AbstractCSVector{S}} = get_base_type(V)((getproperty(v, fn) isa Missing ? missing : build_symbolic_function(getproperty(v, fn), args...) for fn in fieldnames(V))...)
compute!(v::V, args...) where {S,V<:Union{AbstractCSVectors{S},AbstractCSVector{S},AbstractCSTensor{S}}} = get_base_type(V)((getproperty(v, fn) isa Missing ? missing : compute!(getproperty(v, fn), args...) for fn in fieldnames(V))...)
compute!(v::V, a, b, c) where {S,E1<:UnitBasisVector{<:Union{Float64,Array}, <:Any, <:Any,S},E2,E3,V<:UnitBasisVectors{E1,E2,E3,S}} = sum((f * c for (f,c) in zip([a,b,c],components(v))))
compute!(f::RuntimeGeneratedFunctions.RuntimeGeneratedFunction, args...) = Float64(f(args))

BasisVectors{S}(𝐑::AbstractCSVector, v::Vector{Num}) where {S} = BasisVectors{S}((build_symbolic_function(expand_derivatives(Differential(v_)(𝐑)), v) for v_ in v)...)
PVector{S}(v1::Num, v2::Num, v3::Num, v::Array{<:Num}) where {S} = PVector{S}((build_symbolic_function(v_, v) for v_ in [v1, v2, v3])...)
BasisVectors{S}(v1::Num, v2::Num, v3::Num, v::Array{<:Num}) where {S} = BasisVectors{S}((build_symbolic_function(expand_derivatives(Differential(v_)(PVector{CartesianCS}(v1, v2, v3))), v) for v_ in v)...)
PVector{S}(arr_gen::AbstractArrayGenerator; kw...) where {S} = PVector{S}((arr_gen(;kw...) for v_ in 1:3)...)

get_base_type(::Type{A}) where {A} = Base.typename(A).wrapper
for op in (:+, :-, :*, :/, :^, :sqrt,:abs)
    eval(:(Base.$op(f1::SymbolicFunction, f2::SymbolicFunction) = build_symbolic_function(simplify($op(f1.expr, f2.expr)), f1.args...)))
    eval(:(Base.$op(f1::SymbolicFunction, i) = build_symbolic_function(simplify($op(f1.expr, i)), f1.args...)))
    eval(:(Base.$op(i, f1::SymbolicFunction) = build_symbolic_function(simplify($op(i,f1.expr)), f1.args...)))
    eval(:(Base.$op(f1::SymbolicFunction) = build_symbolic_function(simplify($op(f1.expr)), f1.args...)))
end