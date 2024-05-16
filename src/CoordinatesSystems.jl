module CoordinatesSystems
using MacroTools
using OrderedCollections

export Component, Coordinate, CoordinatesSystem, BasisVectors, UnitBasisVectors, PVector, PTensor, ⊗, ⋅, MetricTensor, Jacobian, Divergence

generate_coordinate_systems = false

include("array_generators.jl")
include("coordinates_systems.jl")


UArray{D} = Array{Float64,D}



CSVector{E1,E2,E3,S} = Union{BasisChangeComponent{E1,E2,E3,S},UnitBasisVector{E1,E2,E3,S},PVector{E1,E2,E3,S},PTensorComponent{E1,E2,E3,S},TensorComponent{E1,E2,E3,S}}
CSVectors{E1,E2,E3,S} = Union{UnitBasisVectors{E1,E2,E3,S},BasisVectors{E1,E2,E3,S}}

PhysicsCoordinates1D{V1,S} = PhysicsCoordinates{V1,Missing,Missing,S} where {V1,S}
PhysicsCoordinates2D{V1,V2,S} = PhysicsCoordinates{V1,V2,Missing,S} where {V1,V2,S}
PhysicsCoordinates3D{V1,V2,V3,S} = PhysicsCoordinates{V1,V2,V3,S} where {V1,V2,V3,S}
PhysicsCoordinates1D{S}(arr_gen::ArrayGenerator) where {S} = PhysicsCoordinates{S}(arr_gen(), missing, missing)
PhysicsCoordinates2D{S}(arr_gen::ArrayGenerator) where {S} = PhysicsCoordinates{S}(arr_gen(), arr_gen(), missing)
PhysicsCoordinates3D{S}(arr_gen::ArrayGenerator) where {S} = PhysicsCoordinates{S}(arr_gen(), arr_gen(), arr_gen())

include("symbolics.jl")
# NormalizationMetric(g::AbstractMetricTensor{S}) where {S} = NormalizationMetric{S}((1.0 ./ sqrt.(getproperty(getproperty(g, fn), fn)) for fn in propertynames(g))...)
Tensor{S}(arr_gen::ArrayGenerator) where {S} = Tensor{S}(TensorComponent{S}(arr_gen), TensorComponent{S}(arr_gen), TensorComponent{S}(arr_gen))
TensorComponent{S}(arr_gen::ArrayGenerator) where {S} = TensorComponent{S}(arr_gen(), arr_gen(), arr_gen())

cs_dic = Dict()
cs_dic[:default] = CartesianCS
cs_dic[:parallel_fluxaligned] = ParallelFieldAlignedCS
cs_dic[:poloidal_fluxaligned] = PoloidalFieldAlignedCS

arr_gen = ArrayGenerator(0)
UnitBasisVectors(S::Type{<:CoordinatesSystem}) = UnitBasisVectors(S, ArrayGenerator(0))
BasisVectors(S::Type{<:CoordinatesSystem}, arr_gen::ArrayGenerator) = BasisVectors{S}(BasisVector{S}(arr_gen(; fill=1), arr_gen(; fill=0), arr_gen(; fill=0)), BasisVector{S}(arr_gen(; fill=0), arr_gen(; fill=1), arr_gen(; fill=0)), BasisVector{S}(arr_gen(; fill=0), arr_gen(; fill=0), arr_gen(; fill=1)))
UnitBasisVectors(S::Type{<:CoordinatesSystem}, arr_gen::ArrayGenerator) = UnitBasisVectors{S}(UnitBasisVector{S}(arr_gen(; fill=1), arr_gen(; fill=0), arr_gen(; fill=0)), UnitBasisVector{S}(arr_gen(; fill=0), arr_gen(; fill=1), arr_gen(; fill=0)), UnitBasisVector{S}(arr_gen(; fill=0), arr_gen(; fill=0), arr_gen(; fill=1)))
UnitBasisVectors(u::AbstractBasisVectors{S}) where {S} = UnitBasisVectors{S}((UnitBasisVector(getproperty(u, fn)) for fn in propertynames(u))...)
UnitBasisVector(u::AbstractCSVector{S}) where {S} = UnitBasisVector{S}((normalize(getproperty(u, fn), u) for fn in propertynames(u))...)
normalize(v::T, u::CSVector{T,T,T,S}) where {T<:Union{UArray,Float64},S} = v ./ norm(u)
normalize(v::SymbolicFunction, u::AbstractCSVector{S}) where {S} = v ./ norm(u)
norm(u::AbstractCSVector{S}) where {S} = sqrt.(sum((getproperty(u, fn) .^ 2 for fn in propertynames(u))))
MetricTensor(𝐞̂₁::AbstractBasisVectors) = MetricTensor(𝐞̂₁ ⊗ 𝐞̂₁)
MetricTensor(T̅̅::AbstractTensor{S}) where {S} = MetricTensor{S}((MetricTensorComponent(getproperty(T̅̅, fn)) for fn in propertynames(T̅̅))...)
MetricTensorComponent(T̅::AbstractTensorComponent{S}) where {S} = MetricTensorComponent{S}((getproperty(T̅, fn) for fn in propertynames(T̅))...)
# AbstractMetricTensorComponent(getproperty(𝐞̂₁, fn), 𝐞̂₁) for fn in propertynames(𝐞̂₁)]...
BasisChangeTensor(𝐞̂₁::AbstractUnitBasisVectors{S1}, 𝐞̂₂::AbstractUnitBasisVectors{S2}) where {S1,S2} = BasisChangeTensor{S1,S2}([AbstractBasisChangeComponent(getproperty(𝐞̂₂, fn), 𝐞̂₁) for fn in propertynames(𝐞̂₂)]...)
BasisChangeTensor(m1::AbstractCSMetrics, m2::AbstractCSMetrics) = BasisChangeTensor(m1.𝐞̂, m2.𝐞̂)
PTensor{S}(a, b, c, e, f, g, h, i, j) where {S} = PTensor{S}(PTensorComponent{S}(a, b, c), PTensorComponent{S}(e, f, g), PTensorComponent{S}(h, i, j))

AbstractMetricTensorComponent(𝐞̂₁::AbstractCSVector, 𝐞̂₂::AbstractBasisVectors{S}) where {S} = MetricTensorComponent{S}((getproperty(𝐞̂₂, fn) ⋅ 𝐞̂₁ for fn in propertynames(𝐞̂₂))...)
AbstractBasisChangeComponent(𝐞̂₁::AbstractCSVector, 𝐞̂₂::AbstractCSVectors{S}) where {S} = BasisChangeComponent{S}((getproperty(𝐞̂₂, fn) ⋅ 𝐞̂₁ for fn in propertynames(𝐞̂₂))...)

→(b1::UnitBasisVectors, b2::UnitBasisVectors) = BasisChangeTensor(b1, b2)






# operation: a * 𝐯 = 𝐯_new(a*v1,a*v2, a*v3)

# PVector{N}(v::AbstractPVector{S1,S2,Generic}) where {N,S1,S2} = PVector{S1,S2,N}((getproperty(v, fn) for fn in propertynames(v))...)
for op in (:+, :-, :*, :/, :^, :sqrt)
    eval(:(Base.$op(v1::T, v2::T) where {T<:AbstractCSVector} = get_base_type(T)(($op(getproperty(v1, fn), getproperty(v2, fn)) for fn in fieldnames(T))...)))
    eval(:(Base.$op(v1::T, v2) where {T<:AbstractCSVector} = get_base_type(T)(($op(getproperty(v1, fn), v2) for fn in fieldnames(T))...)))
    eval(:(Base.$op(v1, v2::T) where {T<:AbstractCSVector} = get_base_type(T)(($op(getproperty(v1, fn), v2) for fn in fieldnames(T))...)))
    eval(:(Base.$op(v1::T) where {T<:AbstractCSVector} = get_base_type(T)(($op(getproperty(v1, fn)) for fn in fieldnames(T))...)))
end

# Base.:/(f::Float64, v::T) where {S,T<:AbstractCSVector{S}} = PVector{S}((getproperty(v, fn) / f for fn in fieldnames(T))...)
# Base.:+(v1::T, v2::T) where {S,T<:AbstractCSVector{S}} = PVector{S}((getproperty(v1, fn) + getproperty(v2, fn) for fn in fieldnames(T))...)
# Base.:-(v1::T, v2::T) where {S,T<:AbstractCSVector{S}} = PVector{S}((getproperty(v1, fn) - getproperty(v2, fn) for fn in fieldnames(T))...)
# Base.:*(::Missing, ::AbstractBasisVector) = missing
#Base.:*(f::Vector{Float64}, v::T) where {S,T<:AbstractCSVector{S}} = PVector{S}((getproperty(v, fn) .* f for fn in fieldnames(T))...)
#Base.:/(f::Vector{Float64}, v::T) where {S,T<:AbstractCSVector{S}} = PVector{S}((getproperty(v, fn) ./ f for fn in fieldnames(T))...)


# struct Dot{V1,V2}
#     v1::V1
#     v2::V2
# end
# (d::Dot)(args...) = ⋅(d.v1, d.v2, args...)

# RightContraction{S}(v1::V1, v2::V2, v3::V3) where {S,V1,V2,V3} = RightContraction{V1,V2,V3,S}(v1, v2, v3)

function Base.show(io::IO, mt::AbstractBasisChangeTensor{S1,S2}) where {S1,S2}
    println(io, "basis change tensor $S1 → $S2")
    println(io, "    ", ("     $fn      " for fn in fieldnames(S2))...)
    println(io, "    ", (" __________ " for fn in fieldnames(S2))...)
    for fn in propertynames(mt)
        mc = getproperty(mt, fn)
        println(io, "$fn | ", (fmt_g(getproperty(mc, fnn)) for fnn in propertynames(mc))...)
    end
end

components(v::Union{AbstractCSVector,AbstractCSVectors,AbstractCSTensor,CoordinatesSystem}) = (getproperty(v, fn) for fn in propertynames(v))
function Base.show(io::IO, v::AbstractBasisVectors{S}) where {S}
    println(io, "basis vectors $S")
    for fn in propertynames(v)
        println(io, "$fn : ", getproperty(v, fn))
    end
end

Base.show(io::IO, c::AbstractCSVector) = print(io, getfield(c, 1), " ", get_vector_sdoc(c, 1), " + ", getfield(c, 2), " ", get_vector_sdoc(c, 2), " + ", getfield(c, 3), " ", get_vector_sdoc(c, 3))

get_vector_sdoc(v::AbstractUnitBasisVector, c) = "𝐞̂_$(get_component_name(v,c))"
get_vector_sdoc(v::AbstractCSVector, c) = "𝐞_$(get_component_name(v,c))"

function Base.show(io::IO, mt::AbstractMetricTensor{S1}) where {S1}
    println(io, "metric tensor $S1")
    println(io, "    ", ("     $fn      " for fn in fieldnames(S1))...)
    println(io, "    ", (" __________ " for fn in fieldnames(S1))...)
    for fn in propertynames(mt)
        mc = getproperty(mt, fn)
        println(io, "$fn | ", (fmt_g(getproperty(mc, fnn)) for fnn in propertynames(mc))...)
    end
end

# Base.show(io::IO, v::AbstractPVector) = print(io, "[$(getfield(v,1)),$(getfield(v,2)),$(getfield(v,3))]")
# Base.show(io::IO, ::MIME"text/plain", v::AbstractPVector) = print(io, "[$(getfield(v,1)),$(getfield(v,2)),$(getfield(v,3))]")


using Format
fmt_g(f::Vector{Float64}) = "Vector{Float64}"
fmt_g(f::Float64) = format(" {:+.3e} ", f)
fmt_g(f::SymbolicFunction) = format(" {:10s} ", f.expr)
fmt_g(::Missing) = fmt_g(0.0)
struct MetricTensorJacobian{V}
    value::V
end


struct CSMetrics{S,G<:AbstractMetricTensor{S},J,E<:AbstractBasisVectors{S},N<:AbstractUnitBasisVectors{S}} <: AbstractCSMetrics{S}
    cs::S
    g::G
    J::J
    𝐞::E
    𝐞̂::N
end

struct CSMetricsDefinition{S,M}
    cs::S
    metrics::M
end
(def::CSMetricsDefinition{Symbol,Missing})(args...) = CSMetrics{CoordinatesSystem(def.cs)}(args...)
CoordinatesSystem(s::Symbol) = cs_dic[s]

CSMetrics{S}(arr_gen::ArrayGenerator) where {S} = CSMetrics(UnitBasisVectors(S, arr_gen))

function CSMetrics(𝐞::AbstractBasisVectors{S}) where {S}
    g = MetricTensor(𝐞)
    J = abs.(det(g))
    𝐞̂ = UnitBasisVectors(𝐞)
    CSMetrics(S(), g, J, 𝐞, 𝐞̂)
end

getfield_(v::Real) = v
getfield_(::Missing) = 0.0
getfield_(g::Union{MetricTensor,MetricTensorComponent}, i, k) = getfield_(getfield(g, i), k)
getfield_(g::Missing, k) = 0.0
getfield_(g::Array, k) = g[k]




function get_eltype_size(g::AbstractTensor)
    for i in 1:3
        for j = 1:3
            gij = getfield(getfield(g, i), j)
            if !(gij isa Missing)
                if gij isa Real
                    return typeof(gij), 0
                else
                    return eltype(gij), size(gij)
                end
            end
        end
    end
end

struct Metrics{S1,S2,G1<:MetricTensor{S1},G2<:MetricTensor{S2},L12<:BasisChangeTensor{S1,S2},L21<:BasisChangeTensor{S2,S1}}
    m₁::G1
    m₂::G2
    Λ₁₂::L12
    Λ₂₁::L21
end



include("operators.jl")

# iterator over cs

function Base.iterate(vars::Union{AbstractCSObject,CoordinatesSystem}, state=1)
    state > length(vars) && return nothing
    return (getfield(vars, state), state + 1)
end


Base.length(cs::T) where {T<:Union{AbstractCSObject,CoordinatesSystem}} = fieldcount(T)

get_component_names(v::AbstractPTensor) = Base.IteratorsMD.flatten(((((Symbol(fn * "_" * fn2) for fn2 in propertynames(getproperty(v, fn)))...,) for fn in propertynames(v))...,))
get_component_names(v::AbstractCSVector) = propertynames(v)
get_component_names(v::CoordinatesSystem) = propertynames(v)
get_component_names(v::Type{<:CoordinatesSystem}) = fieldnames(v)
get_components(::AbstractCSVector{S}) where {S} = [s() for s in fieldtypes(S)]
# get_components(::AbstractPVector{S,S,N}) where {S,N} = [s() for s in fieldtypes(S)]
get_components(::AbstractPTensor{S}) where {S} = [s() for s in fieldtypes(S)]
# get_components(::AbstractPTensor, c::Component) = [c]
# get_components(::AbstractPTensor, c::Tuple{Component,Component}) = [c]
# get_components(::AbstractPTensorComponent{S,N}) where {S,N} = [s() for s in fieldtypes(S)]
get_coordinates(cs::S) where {S<:CoordinatesSystem} = [Coordinate(s()) for s in fieldtypes(S)]
export get_components




get_component(v::AbstractCSVector, c::Int64) = getfield(v, c)
get_component_name(v::AbstractCSVector, c::Int64) = collect(propertynames(v))[c]
get_component_name(::Type{C}) where {C<:Component} = get_component_name(C())
get_component_name(c::Component)::Symbol = c.s
get_coordinate_name(c::Coordinate)::Symbol = c.s

get_component(v::AbstractCSObject, c::Component) = getproperty(v, c.s)
get_coordinate(v::AbstractCSObject, c::Coordinate) = getproperty(v, c.s)
Component(s::Symbol) = occursin("_", string(s)) ? Tuple(GenericComponent{s_}(s_) for s_ in Symbol.(split(string(s), "_"))) : GenericComponent{s}(s)
Component(s::Tuple{Symbol,Symbol}) = (Component(s[1]), Component(s[2]))

Component(cs, s::Symbol) = occursin("_", string(s)) ? Tuple(_Component(cs, s_) for s_ in Symbol.(split(string(s), "_"))) : _Component(cs, s)
Component(cs, s::Tuple{Symbol,Symbol}) = (_Component(cs, s[1]), _Component(cs, s[2]))
Coordinate(cs, s::Symbol) = occursin("_", string(s)) ? Tuple(_Coordinate(cs, s_) for s_ in Symbol.(split(string(s), "_"))) : _Coordinate(cs, s)
Coordinate(cs, s::Tuple{Symbol,Symbol}) = (_Coordinate(cs, s[1]), _Coordinate(cs, s[2]))
Component(cs, c::Coordinate{T}) where {T} = _Component(cs, c)
Coordinate(cs, ::Missing) = missing
_Coordinate(cs, s::Symbol) = Coordinate(getproperty(cs, s))
_Component(cs, s::Symbol) = getproperty(cs, s)

end
