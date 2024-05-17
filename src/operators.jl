⋅(v1::AbstractCSVector{S1}, v2::AbstractCSVector{S2}, g::BasisChangeTensor{G1,Missing,Missing,S1,S2}, args::Vararg{Int64,N}) where {N,G1,S1,S2} = ⋅(getfield(v1, 1), v2, getfield(g, 1), args...)
⋅(v1::AbstractCSVector{S1}, v2::AbstractCSVector{S2}, g::BasisChangeTensor{Missing,Missing,G3,S1,S2}, args::Vararg{Int64,N}) where {N,G3,S1,S2} = ⋅(getfield(v1, 3), v2, getfield(g, 3), args...)
⋅(v1::AbstractCSVector{S1}, v2::AbstractCSVector{S2}, g::BasisChangeTensor{Missing,G2,Missing,S1,S2}, args::Vararg{Int64,N}) where {N,G2,S1,S2} = ⋅(getfield(v1, 2), v2, getfield(g, 2), args...)
⋅(v1::AbstractCSVector{S1}, v2::AbstractCSVector{S2}, g::BasisChangeTensor{G1,G2,Missing,S1,S2}, args::Vararg{Int64,N}) where {N,G1,G2,S1,S2} = ⋅(getfield(v1, 1), v2, getfield(g, 1), args...) + ⋅(getfield(v1, 2), v2, getfield(g, 2), args...)
⋅(v1::AbstractCSVector{S1}, v2::AbstractCSVector{S2}, g::BasisChangeTensor{Missing,G2,G3,S1,S2}, args::Vararg{Int64,N}) where {N,G2,G3,S1,S2} = ⋅(getfield(v1, 3), v2, getfield(g, 3), args...) + ⋅(getfield(v1, 2), v2, getfield(g, 2), args...)
⋅(v1::AbstractCSVector{S1}, v2::AbstractCSVector{S2}, g::BasisChangeTensor{G1,Missing,G3,S1,S2}, args::Vararg{Int64,N}) where {N,G1,G3,S1,S2} = ⋅(getfield(v1, 1), v2, getfield(g, 1), args...) + ⋅(getfield(v1, 3), v2, getfield(g, 3), args...)
⋅(v1::AbstractCSVector{S1}, v2::AbstractCSVector{S2}, g::BasisChangeTensor{G1,G2,G3,S1,S2}, args::Vararg{Int64,N}) where {N,G1,G2,G3,S1,S2} = ⋅(getfield(v1, 1), v2, getfield(g, 1), args...) + ⋅(getfield(v1, 2), v2, getfield(g, 3), args...) + ⋅(getfield(v1, 3), v2, getfield(g, 3), args...)

⋅(v1::AbstractCSVector{S1}, v2::AbstractCSVector{S2}, g::BasisChangeTensor{G1,Missing,Missing,S1,S2}) where {G1,S1,S2} = ⋅(getfield(v1, 1), v2, getfield(g, 1))
⋅(v1::AbstractCSVector{S1}, v2::AbstractCSVector{S2}, g::BasisChangeTensor{Missing,Missing,G3,S1,S2}) where {G3,S1,S2} = ⋅(getfield(v1, 3), v2, getfield(g, 3))
⋅(v1::AbstractCSVector{S1}, v2::AbstractCSVector{S2}, g::BasisChangeTensor{Missing,G2,Missing,S1,S2}) where {G2,S1,S2} = ⋅(getfield(v1, 2), v2, getfield(g, 2))
⋅(v1::AbstractCSVector{S1}, v2::AbstractCSVector{S2}, g::BasisChangeTensor{G1,G2,Missing,S1,S2}) where {G1,G2,S1,S2} = ⋅(getfield(v1, 1), v2, getfield(g, 1)) .+ ⋅(getfield(v1, 2), v2, getfield(g, 2))
⋅(v1::AbstractCSVector{S1}, v2::AbstractCSVector{S2}, g::BasisChangeTensor{Missing,G2,G3,S1,S2}) where {G2,G3,S1,S2} = ⋅(getfield(v1, 3), v2, getfield(g, 3)) .+ ⋅(getfield(v1, 2), v2, getfield(g, 2))
⋅(v1::AbstractCSVector{S1}, v2::AbstractCSVector{S2}, g::BasisChangeTensor{G1,Missing,G3,S1,S2}) where {G1,G3,S1,S2} = ⋅(getfield(v1, 1), v2, getfield(g, 1)) .+ ⋅(getfield(v1, 3), v2, getfield(g, 3))
⋅(v1::AbstractCSVector{S1}, v2::AbstractCSVector{S2}, g::BasisChangeTensor{G1,G2,G3,S1,S2}) where {G1,G2,G3,S1,S2} = ⋅(getfield(v1, 1), v2, getfield(g, 1)) .+ ⋅(getfield(v1, 2), v2, getfield(g, 3)) .+ ⋅(getfield(v1, 3), v2, getfield(g, 3))



⋅(v1::CSVector{E1,Missing,Missing,S}, v2::CSVector{E1,Missing,Missing,S}, index::Vararg{Int64,N}) where {E1<:Array,S,N} = getfield(v1, 1)[index...] * getfield(v2, 1)[index...]
⋅(v1::CSVector{E1,E1,Missing,S}, v2::CSVector{E1,E1,Missing,S}, index::Vararg{Int64,N}) where {E1<:Array,S,N} = getfield(v1, 1)[index...] * getfield(v2, 1)[index...] + getfield(v1, 2)[index...] * getfield(v2, 2)[index...]
⋅(v1::CSVector{E1,E1,E1,S}, v2::CSVector{E1,E1,E1,S}, index::Vararg{Int64,N}) where {E1<:Array,S,N} = getfield(v1, 1)[index...] * getfield(v2, 1)[index...] + getfield(v1, 2)[index...] * getfield(v2, 2)[index...] + getfield(v1, 3)[index...] * getfield(v2, 3)[index...]

⋅(v1::CSVector{T,U,V,S}, v2::CSVector{T,U,V,S}) where {T,U,V,S} = getfield(v1, 1) * getfield(v2, 1) + getfield(v1, 2) * getfield(v2, 2) + getfield(v1, 3) * getfield(v2, 3)
⋅(v1::AbstractCSVector{S}, v2::AbstractCSVector{S}) where {S} = getfield(v1, 1) * getfield(v2, 1) + getfield(v1, 2) * getfield(v2, 2) + getfield(v1, 3) * getfield(v2, 3)
⋅(t::T, v::V) where {S,T<:AbstractCSTensor{S},V<:AbstractCSVector{S}} = get_base_type(V)(getfield(t, 1) ⋅ v, getfield(t, 2) ⋅ v, getfield(t, 3) ⋅ v)

#⋅(v1::CSVector{T,U,V,S}, v2::CSVector{T,U,V,S}, index::Vararg{Int64,N}) where {N,T,U,V,S} = getfield(v1, 1)[index...] * getfield(v2, 1)[index...] + getfield(v1, 2)[index...] * getfield(v2, 2)[index...] + getfield(v1, 3)[index...] * getfield(v2, 3)[index...]
#⋅(v1::CSVector{T,U,V,S}, v2::CSVector{T,U,V,S}) where {N,T,U,V,S} = getfield(v1, 1) * getfield(v2, 1) + getfield(v1, 2) * getfield(v2, 2) + getfield(v1, 3) * getfield(v2, 3)


⋅(v1::CSVector{Missing,U,V,S}, v2::CSVector{Missing,U,V,S}, index::Vararg{Int64,N}) where {N,U,V,S} = getfield(v1, 1)[index...] * getfield(v2, 1)[index...] + getfield(v1, 2)[index...] * getfield(v2, 2)[index...] + getfield(v1, 3)[index...] * getfield(v2, 3)[index...]
#⋅(v1::CSVector{Missing,U,V,S}, v2::CSVector{Missing,U,V,S}, index::Vararg{Int64,N}) where {N,U,V,S} = getfield(v1, 1)[index...] * getfield(v2, 1)[index...] + getfield(v1, 2)[index...] * getfield(v2, 2)[index...] + getfield(v1, 3)[index...] * getfield(v2, 3)[index...]

⋅(v1::CSVector{U,Missing,Missing,S}, v2::CSVector{V,Missing,Missing,S}, index::Vararg{Int64,N}) where {N,U,V,S} = getfield(v1, 1)[index...] * getfield(v2, 1)[index...]

# right contraction 
# ⋅(g::AbstractCSTensor{S}, v::AbstractCSVector{S}, args...) where {S} = RightContraction((Dot(getproperty(g, fn), v) for fn in propertynames(g))...)
⋅(v1::CSVector{Missing,U,V,S}, v2::CSVector{Missing,U,V,S}, index::Vararg{Int64,N}) where {N,V,U<:UArray{N},S} = getfield(v1, 1)[index...] * getfield(v2, 1)[index...] + getfield(v1, 2)[index...] * getfield(v2, 2)[index...] + getfield(v1, 3)[index...] * getfield(v2, 3)[index...]
# ⋅(v1::CSVector{T,U,V,S}, v2::CSVector{T,U,V,S}, index::Vararg{Int64,N}) where {N,T<:UArray{N},U<:UArray{N},S} = getfield(v1, 1)[index...] * getfield(v2, 1)[index...] + getfield(v1, 2)[index...] * getfield(v2, 2)[index...] + getfield(v1, 3)[index...] * getfield(v2, 3)[index...]
# ⋅(v1::CSVector{T,U,V,S}, v2::CSVector{T,U,V,S}, index::Vararg{Int64,N}) where {N,T<:UArray{N},U<:UArray{N},S} = getfield(v1, 1)[index...] * getfield(v2, 1)[index...] + getfield(v1, 2)[index...] * getfield(v2, 2)[index...] + getfield(v1, 3)[index...] * getfield(v2, 3)[index...]
# ⋅(v1::CSVector{T,U,V,S}, v2::CSVector{T,U,V,S}, index::Vararg{Int64,N}) where {N,T<:UArray{N},U<:UArray{N},S} = getfield(v1, 1)[index...] * getfield(v2, 1)[index...] + getfield(v1, 2)[index...] * getfield(v2, 2)[index...] + getfield(v1, 3)[index...] * getfield(v2, 3)[index...]

⋅(v1::CSVector{T,T,T,S}, v2::CSVector{U,U,U,S}) where {S,T<:UArray,U<:UArray} = @views getfield(v1, 1) .* getfield(v2, 1) .+ getfield(v1, 2) .* getfield(v2, 2) .+ getfield(v1, 3) .* getfield(v2, 3)
⋅(v1::CSVector{T,T,T,S}, v2::CSVector{U,U,U,S}) where {S,T<:Union{Real},U<:Union{Real}} = getfield(v1, 1) * getfield(v2, 1) + getfield(v1, 2) * getfield(v2, 2) + getfield(v1, 3) * getfield(v2, 3)

⋅(v1::UArray, v2::AbstractCSVector{S}, g::CSVector{G1,G2,G3,S}, index::Vararg{Int64,N}) where {N,G1,G2,G3,S} = v1[index...] * ⋅(v, g, index...)
⋅(v1::UArray, v2::AbstractCSVector{S}, g::CSVector{G1,G2,G3,S}) where {G1,G2,G3,S} = v1 .* ⋅(v2, g)

# ⋅(v::AbstractCSVector{S}, g::CSVector{G1,G2,G3,S}, index::Vararg{Int64,N}) where {N,G1,G2,G3,S} = v[index...] * ⋅(v, g, index...)
⋅(v1::T, v2::AbstractCSVector{S}) where {S,T<:UArray} = @views getfield(v1, 1) .* getfield(v2, 1) .+ getfield(v1, 2) .* getfield(v2, 2) .+ getfield(v1, 3) .* getfield(v2, 3)
⋅(v1::T, v2::AbstractCSVector{S}) where {S,T<:Union{Real}} = getfield(v1, 1) * getfield(v2, 1) + getfield(v1, 2) * getfield(v2, 2) + getfield(v1, 3) * getfield(v2, 3)

# --- outer product ---- #
⊗(𝐞̂₁::AbstractCSVectors{S}, 𝐞̂₂::AbstractCSVectors{S}) where {S} = outer_product(𝐞̂₁, 𝐞̂₂)
⊗(𝐞̂₁::AbstractCSVector{S}, 𝐞̂₂::AbstractCSVector{S}) where {S} = outer_product(𝐞̂₁, 𝐞̂₂)
outer_product(𝐞̂₁::AbstractCSVectors{S}, 𝐞̂₂::AbstractCSVectors{S}) where {S} = Tensor{S}((TensorComponent{S}(((getproperty(𝐞̂₂, fn) ⋅ getproperty(𝐞̂₁, fn2)) for fn in propertynames(𝐞̂₁))...) for fn2 in propertynames(𝐞̂₁))...)
outer_product(𝐞̂₁::AbstractCSVector{S}, 𝐞̂₂::AbstractCSVector{S}) where {S} = Tensor{S}((TensorComponent{S}(((getproperty(𝐞̂₂, fn) * getproperty(𝐞̂₁, fn2)) for fn in propertynames(𝐞̂₁))...) for fn2 in propertynames(𝐞̂₁))...)

×(v1::T, v2::T) where {T<:AbstractCSVector} = get_base_type(T)(getfield(v1, 2) * getfield(v2, 3) - getfield(v1, 3) * getfield(v2, 2), - getfield(v1, 1) * getfield(v2, 3) + getfield(v1, 3) * getfield(v2, 1),getfield(v1, 1) * getfield(v2, 2) - getfield(v1, 2) * getfield(v2, 1))

# AbstractOperator = Union{typeof(-),RightContraction}

# struct GenericOperator{V1,V2,O}
#     v1::V1
#     v2::V2
# end
# GenericOperator{O}(v1::V1, v2::V2) where {V1,V2,O} = GenericOperator{V1,V2,O}(v1, v2)
# (op::GenericOperator{V1,V2,O})(args...) where {O,V1,V2} = O(op.v1(args...), op.v2(args...))
# (op::GenericOperator{V1,Missing,O})(args...) where {V1,O} = O(op.v1(args...))

# Base.:-(v1::AbstractComponentOperatorCS{S}) where {S} = ComponentOperator{S,-}(v1, missing)
# Base.:+(v1::AbstractComponentOperatorCS{S}) where {S} = ComponentOperator{S,+}(v1, missing)

# ComponentOperator{S,O}(v1::AbstractComponentOperatorCS{S}, v2::AbstractComponentOperatorCS{S}) where {S,O} = ComponentOperator{S,O}((GenericOperator{O}(getproperty(v1,fn),getproperty(v2,fn)) for fn in propertynames(v1))...)
# ComponentOperator{S,O}(v1::AbstractComponentOperatorCS{S}, v2::Missing) where {S,O} = ComponentOperator{S,O}((GenericOperator{O}(getproperty(v1, fn), missing) for fn in propertynames(v1))...)


norm(v1::T, v2::T) where {T<:AbstractCSVector} = ⋅(v1,v2)
det(a, b, c, d, e, f, g, h, i) = @. a * (e * i - f * h) - b * (d * i - g * f) + c * (d * h - e * g)
det(g::AbstractCSTensor) = det(vcat(([c for c in components(r)] for r in components(g))...)...)
toscalar(a) = a
function toscalar(a::Vector{<:SymbolicFunction}) 
@assert length(a) == 1 
a[1]
end
struct DivergenceOperator{S,J,M}
    jacobian::J
    g::M
end
Divergence(g::AbstractMetricTensor{S}) where {S<:CoordinatesSystem} = DivergenceOperator{S}(toscalar(abs.(det(g))), g)
DivergenceOperator{S}(j::J, g::M) where {S,J,M} = DivergenceOperator{S,J,M}(j, g)

⋅(∇::DivergenceOperator{S,J,M}, 𝐯::AbstractCSVector{S}) where {S,J,M} = DivergenceOperation(∇, 𝐯)

DivergenceOperation(∇, 𝐯) = 1 / sqrt(∇.jacobian) * sum(Differential(v_)(v * sqrt(∇.jacobian)) for (v, v_) in zip(components(𝐯), ∇.jacobian.args[1]))

