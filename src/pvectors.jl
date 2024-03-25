
struct ComponentProjection{C<:Component,V<:AbstractCSVector,M<:BasisChangeComponent}
    component::C
    v::V
    m::M
end

compute_projection(v::ComponentVector{T,T,T,S}, g::BasisChangeComponent{G1,G2,G3,S}, args...) where {S,T,G1,G2,G3} = ⋅(v, g, args...)

Base.getindex(p::ComponentProjection, args...) = p(args...)
(p::ComponentProjection)(args...) = compute_component!(p.v, p.m)
compute_component!(v, m, args...) = ⋅(v, m, args...)


PVector{N}(v::AbstractCSVector{S1}, Λ::AbstractBasisChangeTensor{S1,S2}) where {N,S1,S2} = PVector{S1,S2,N}(vcat([getproperty(v, fn) for fn in propertynames(v)], [ComponentProjection(Component{fn}(), v, getproperty(Λ, fn)) for fn in propertynames(Λ)])...)

PVector(v::AbstractCSVector, Λ::AbstractBasisChangeTensor; N=Generic) = PVector{N}(v, Λ)
PVector{S1,S2,N}(a, b, c, old_projectors::Vector{<:ComponentProjection}=missing) where {S1,S2,N} = PVector{S1,S2,N}(a, b, c, ComponentProjection(old_projectors[2], a), ComponentProjection(old_projectors[2], b), ComponentProjection(old_projectors[3], c))
PVector{S,S,N}(v::AbstractCSVector{S}, Λ::AbstractBasisChangeTensor{S,S}) where {S,N}= PVector{S,S,N}(v)

Base.:*(v::T, f::U) where {U<:Array,T<:Union{AbstractComponentVector,AbstractPVector}} = *(f, v)
Base.:/(v::T, f::U) where {U<:Array,T<:Union{AbstractComponentVector,AbstractPVector}} = /(f, v)

Base.:*(f::U, v::T) where {N,S1,S2,U<:Array,T<:AbstractPVector{S1,S2,N}} = PVector{S1,S2,N}((getproperty(v, i) isa Missing ? missing : getproperty(v, i) .* f for i in 1:3)...; old_projectors=[getproperty(v, i) for i in 3:6])
Base.:/(f::U, v::T) where {N,S1,S2,U<:Array,T<:AbstractPVector{S1,S2,N}} = PVector{S1,S2,N}((getproperty(v, i) isa Missing ? missing : getproperty(v, i) ./ f for i in 1:3)...; old_projectors=[getproperty(v, i) for i in 3:6])
Base.:*(f::U, v::T) where {N,S,U<:Array,T<:AbstractPVector{S,S,N}} = PVector{S,S,N}((getfield(v, i) isa Missing ? missing : getfield(v, i) .* f for i in 1:3)...)
Base.:/(f::U, v::T) where {N,S,U<:Array,T<:AbstractPVector{S,S,N}} = PVector{S,S,N}((getfield(v, i) isa Missing ? missing : getfield(v, i) ./ f for i in 1:3)...)
