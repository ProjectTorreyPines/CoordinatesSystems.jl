module CoordinatesSystems
include("array_generators.jl")
generate_coordinate_systems = false
export Component, Coordinate, CoordinateSystem


UArray{D} = Array{Float64,D}
abstract type AbstractCSComponentObject end
abstract type CoordinateSystem end
abstract type AbstractCSTensor{S} <: AbstractCSComponentObject end
abstract type AbstractCSVector{S} <: AbstractCSComponentObject end

abstract type AbstractPhysicsComponentVector{S} <: AbstractCSVector{S} end
abstract type AbstractPhysicsComponentVectors{S} end
abstract type AbstractBasisVectors{S} end
abstract type AbstractBasisVector{S} <: AbstractCSVector{S} end
abstract type AbstractUnitBasisVectors{S} <: AbstractBasisVectors{S} end
abstract type AbstractUnitBasisVector{S} <: AbstractCSVector{S} end

abstract type AbstractComponentOperatorCS{S} end
abstract type AbstractPhysicsCoordinates{S} <: AbstractCSVector{S} end
abstract type AbstractTensorComponent{S<:CoordinateSystem}  end
abstract type AbstractMetricTensorComponent{S<:CoordinateSystem} end
abstract type AbstractBasisChangeComponent{S<:CoordinateSystem} end
abstract type AbstractComponentOperator{S,O} <: AbstractCSComponentObject end
abstract type ComponentOperator{V1,V2,V3,S,O} <: AbstractComponentOperator{S,O} end
abstract type AbstractBasisComponent{S<:CoordinateSystem} end
abstract type AbstractPhysicsCoordinate{S} end
abstract type AbstractPVector{S1,S2,N} <: AbstractCSComponentObject end
abstract type AbstractPTensor{S,N} <: AbstractCSTensor{S} end
abstract type AbstractPTensorComponent{S,N} <: AbstractCSVector{S} end
abstract type PVector{V1,V2,V3,P1,P2,P3,N,S1,S2} <: AbstractPVector{S1,S2,N} end
abstract type PTensor{V1,V2,V3,N,S} <: AbstractPTensor{S,N} end
abstract type PTensorComponent{V1,V2,V3,N,S} <: AbstractPTensorComponent{S,N} end

abstract type AbstractDyadicTensor{S<:CoordinateSystem} end
abstract type AbstractDyadicTensorComponent{S} end

abstract type AbstractBasisChangeTensor{S1,S2} end

abstract type AbstractTensor{S<:CoordinateSystem} <: AbstractCSTensor{S} end
abstract type AbstractDiagonalTensor{S<:CoordinateSystem} <: AbstractCSTensor{S} end
abstract type AbstractMetricTensor{S<:CoordinateSystem} <: AbstractTensor{S} end
abstract type AbstractCSMetrics{S} <: AbstractCSTensor{S} end

abstract type BasisChangeTensor{G1,G2,G3,S1<:CoordinateSystem,S2<:CoordinateSystem} <: AbstractBasisChangeTensor{S1,S2} end
abstract type AbstractRightContraction{S} <: AbstractComponentOperatorCS{S} end

abstract type AbstractNormalizationMetric{S} end


abstract type Component{T} end
abstract type Coordinate{T} end
AbstractComponentVector{S} = Union{AbstractDyadicTensorComponent{S},AbstractBasisChangeComponent{S},AbstractUnitBasisVector{S},AbstractPhysicsComponentVector{S},AbstractPVector{S,S2,N}} where {S2,N}

get_cs_type(::AbstractCSMetrics{S}) where S = S
ε = 1e-14
threshold_metric_component(a::Float64; ε=1e-14) = abs(a) < ε ? missing : a
threshold_metric_component(a::Any; ε=1e-14) = args
get_coordinate_systems_filename() = "$(@__DIR__)/generated_code/coordinate_systems.jl"
include("code_generator.jl")
# https://math.stackexchange.com/questions/2181886/divergence-of-the-product-of-a-scalar-and-a-tensor-fields
# https://math.stackexchange.com/questions/1558913/divergence-theorem-applied-to-a-tensor-dotted-with-a-vector
@add_coordinate_type Parallel
@add_coordinate_type Toroidal
@add_coordinate_type Crossfield
@add_coordinate_type Diamagnetic
@add_coordinate_type Poloidal
@add_coordinate_type Azimuthal
@add_coordinate_type Radial
@add_coordinate_type Vertical
@add_coordinate_type X
@add_coordinate_type Y
@add_coordinate_type Z


@add_coordinate_system CartesianCS x = X y = Y z = Z
@add_coordinate_system ParallelFieldAlignedCS ǁ = Parallel ⊥ = Crossfield ʌ = Diamagnetic
@add_coordinate_system PoloidalFieldAlignedCS x = Poloidal y = Crossfield ϕ = Toroidal
@add_coordinate_system CylindricalCS r = Radial θ = Poloidal z = Z
@add_coordinate_system SphericalCS r = Radial θ = Poloidal Ψ = Azimuthal
@add_coordinate_system ToroidalCS r = Radial θ = Poloidal ϕ = Toroidal
@add_coordinate_system PseudoToroidalCS R = Radial Z = Vertical ϕ = Toroidal


@add_basis_change_tensor
#@add_scalar_product
@add_pvector
@add_ptensor
#@add_compute_projection
include(get_coordinate_systems_filename())


#AbstractCSVector{S} = Union{AbstractBasisVector{S},AbstractUnitBasisVector{S},AbstractPhysicsComponentVector{S}}
AbstractCSVectors{S} = Union{AbstractBasisVectors{S},AbstractUnitBasisVectors{S},AbstractPhysicsComponentVectors{S}}


ComponentVector{E1,E2,E3,S} = Union{PTensorComponent{E1,E2,E3,<:Any,S}, DyadicTensorComponent{E1,E2,E3,S},BasisChangeComponent{E1,E2,E3,S},UnitBasisVector{E1,E2,E3,S},PhysicsComponentVector{E1,E2,E3,S},PVector{E1,E2,E3,E1,E2,E3,<:Any,S,S}}
ComponentVectors{E1,E2,E3,S} = Union{UnitBasisVector{E1,E2,E3,S},PhysicsComponentVectors{E1,E2,E3,S}}


include("pvectors.jl")

PhysicsCoordinates1D{V1,S} = PhysicsCoordinates{V1,Missing,Missing,S} where {V1,S}
PhysicsCoordinates2D{V1,V2,S} = PhysicsCoordinates{V1,V2,Missing,S} where {V1,V2,S}
PhysicsCoordinates3D{V1,V2,V3,S} = PhysicsCoordinates{V1,V2,V3,S} where {V1,V2,V3,S}
PhysicsCoordinates1D{S}(arr_gen::ArrayGenerator) where {S<:CoordinateSystem} = PhysicsCoordinates{S}(arr_gen(), missing, missing)
PhysicsCoordinates2D{S}(arr_gen::ArrayGenerator) where {S<:CoordinateSystem} = PhysicsCoordinates{S}(arr_gen(), arr_gen(), missing)
PhysicsCoordinates3D{S}(arr_gen::ArrayGenerator) where {S<:CoordinateSystem} = PhysicsCoordinates{S}(arr_gen(), arr_gen(), arr_gen())

NormalizationMetric(g::AbstractMetricTensor{S}) where {S} = NormalizationMetric{S}((1.0 ./ sqrt.(getproperty(getproperty(g, fn), fn)) for fn in propertynames(g))...)
Tensor{S}(arr_gen::ArrayGenerator) where {S<:CoordinateSystem} = Tensor{S}(TensorComponent{S}(arr_gen), TensorComponent{S}(arr_gen), TensorComponent{S}(arr_gen))
TensorComponent{S}(arr_gen::ArrayGenerator) where {S} = TensorComponent{S}(arr_gen(), arr_gen(), arr_gen())

cs_dic = Dict()
cs_dic[:default] = CartesianCS
cs_dic[:parallel_fluxaligned] = ParallelFieldAlignedCS
cs_dic[:poloidal_fluxaligned] = PoloidalFieldAlignedCS

BasisVectors(S::Type{<:CoordinateSystem}, arr_gen::ArrayGenerator) = BasisVectors{S}(BasisVector{S}(arr_gen(; fill=1), arr_gen(; fill=0), arr_gen(; fill=0)), BasisVector{S}(arr_gen(; fill=0), arr_gen(; fill=1), arr_gen(; fill=0)), BasisVector{S}(arr_gen(; fill=0), arr_gen(; fill=0), arr_gen(; fill=1)))
UnitBasisVectors(S::Type{<:CoordinateSystem}, arr_gen::ArrayGenerator) = UnitBasisVectors{S}(UnitBasisVector{S}(arr_gen(; fill=1), arr_gen(; fill=0), arr_gen(; fill=0)), UnitBasisVector{S}(arr_gen(; fill=0), arr_gen(; fill=1), arr_gen(; fill=0)), UnitBasisVector{S}(arr_gen(; fill=0), arr_gen(; fill=0), arr_gen(; fill=1)))
UnitBasisVectors(u::AbstractBasisVectors{S}) where {S} = UnitBasisVectors{S}((UnitBasisVector(getproperty(u, fn)) for fn in propertynames(u))...)
UnitBasisVector(u::AbstractCSVector{S}) where {S} = UnitBasisVector{S}((normalize(getproperty(u, fn),u)  for fn in propertynames(u))...)
normalize(v::T,u::ComponentVector{T,T,T,S}) where {T<:UArray,S} = v./norm(u)  

norm(u::ComponentVector{U,U,U,S}) where {U,S} = sqrt(sum(getproperty(u, fn)^2 for fn in propertynames(u)))
norm(u::ComponentVector{U,U,U,S}) where {U<:UArray,S} = sqrt.(sum((getproperty(u, fn) .^ 2 for fn in propertynames(u))))
MetricTensor(𝐞̂₁::AbstractBasisVectors{S}) where {S} = MetricTensor{S}([AbstractMetricTensorComponent(getproperty(𝐞̂₁, fn), 𝐞̂₁) for fn in propertynames(𝐞̂₁)]...)
BasisChangeTensor(𝐞̂₁::AbstractUnitBasisVectors{S1}, 𝐞̂₂::AbstractUnitBasisVectors{S2}) where {S1,S2} = BasisChangeTensor{S1,S2}([AbstractBasisChangeComponent(getproperty(𝐞̂₂, fn), 𝐞̂₁) for fn in propertynames(𝐞̂₂)]...)
BasisChangeTensor(m1::AbstractCSMetrics, m2::AbstractCSMetrics) = BasisChangeTensor(m1.𝐞̂, m2.𝐞̂)

DyadicTensor(𝐞̂₁::AbstractComponentVector{S}, 𝐞̂₂::AbstractComponentVector{S}) where {S} = DyadicTensor{S}([AbstractDyadicTensorComponent(getproperty(𝐞̂₂, fn), 𝐞̂₁) for fn in propertynames(𝐞̂₂)]...)

AbstractMetricTensorComponent(𝐞̂₁::AbstractCSVector, 𝐞̂₂::AbstractBasisVectors{S}) where {S} = MetricTensorComponent{S}((getproperty(𝐞̂₂, fn) ⋅ 𝐞̂₁ for fn in propertynames(𝐞̂₂))...)
AbstractBasisChangeComponent(𝐞̂₁::AbstractCSVector, 𝐞̂₂::AbstractCSVectors{S}) where {S} = BasisChangeComponent{S}((getproperty(𝐞̂₂, fn) ⋅ 𝐞̂₁ for fn in propertynames(𝐞̂₂))...)
AbstractDyadicTensorComponent(𝐞̂₁::T, 𝐞̂₂::AbstractCSVector{S}) where {T,S} = DyadicTensorComponent{S}((DyadicProduct(getproperty(𝐞̂₂, fn), 𝐞̂₁) for fn in propertynames(𝐞̂₂))...)

→(b1::UnitBasisVectors, b2::UnitBasisVectors) = BasisChangeTensor(b1, b2)
⊗(b1::AbstractComponentVector{S}, b2::AbstractComponentVector{S}) where {S} = DyadicTensor(b1, b2)

abstract type Generic end
struct DyadicProduct{V1,V2}
    v1::V1
    v2::V2
end
(dp::DyadicProduct)(args...) = dyadic_product(dp.v1, dp.v2, args...)
dyadic_product(v1::Float64, v2::Float64) = v1 * v2
dyadic_product(v1::T, v2::T, args::Vararg{Int64,N}) where {N,T<:UArray} = v1[args...] * v2[args...]
Base.:*(d::DyadicProduct{Float64,Float64}, f::Float64) = d() * f


Base.:*(f::Float64, v::T) where {S,T<:AbstractCSVector{S}} = PhysicsComponentVector{S}((getproperty(v, fn) * f for fn in fieldnames(T))...)
Base.:*(f::U, v::T) where {S,U<:Array,T <:AbstractComponentVector{S}} = PhysicsComponentVector{S}((getproperty(v, fn) isa Missing ? missing : getproperty(v, fn) .* f for fn in fieldnames(T))...)
Base.:/(f::U, v::T) where {S,U<:Array,T <:AbstractComponentVector{S}} = PhysicsComponentVector{S}((getproperty(v, fn) isa Missing ? missing : getproperty(v, fn) ./ f for fn in fieldnames(T))...)

# operation: a * 𝐯 = 𝐯_new(a*v1,a*v2, a*v3)

PVector{N}(v::AbstractPVector{S1,S2,Generic}) where {N,S1,S2} = PVector{S1,S2,N}((getproperty(v,fn) for fn in propertynames(v))...)

Base.:/(f::Float64, v::T) where {S,T<:AbstractCSVector{S}} = PhysicsComponentVector{S}((getproperty(v, fn) / f for fn in fieldnames(T))...)
Base.:+(v1::T, v2::T) where {S,T<:AbstractCSVector{S}} = PhysicsComponentVector{S}((getproperty(v1, fn) + getproperty(v2, fn) for fn in fieldnames(T))...)
Base.:-(v1::T, v2::T) where {S,T<:AbstractCSVector{S}} = PhysicsComponentVector{S}((getproperty(v1, fn) - getproperty(v2, fn) for fn in fieldnames(T))...)
Base.:*(::Missing, ::AbstractBasisVector) = missing
#Base.:*(f::Vector{Float64}, v::T) where {S,T<:AbstractCSVector{S}} = PhysicsComponentVector{S}((getproperty(v, fn) .* f for fn in fieldnames(T))...)
#Base.:/(f::Vector{Float64}, v::T) where {S,T<:AbstractCSVector{S}} = PhysicsComponentVector{S}((getproperty(v, fn) ./ f for fn in fieldnames(T))...)


struct Dot{V1,V2}
    v1::V1
    v2::V2
end
(d::Dot)(args...) = ⋅(d.v1, d.v2, args...)

RightContraction{S}(v1::V1, v2::V2, v3::V3) where {S,V1,V2,V3} = RightContraction{V1,V2,V3,S}(v1, v2, v3)

function Base.show(io::IO, mt::AbstractBasisChangeTensor{S1,S2}) where {S1,S2}
    println(io, "basis change tensor $S1 → $S2")
    println(io, "    ", ("     $fn      " for fn in fieldnames(S2))...)
    println(io, "    ", (" __________ " for fn in fieldnames(S2))...)
    for fn in propertynames(mt)
        mc = getproperty(mt, fn)
        println(io, "$fn | ", (fmt_g(getproperty(mc, fnn)) for fnn in propertynames(mc))...)
    end
end

function Base.show(io::IO, mt::AbstractMetricTensor{S1}) where {S1}
    println(io, "metric tensor $S1")
    println(io, "    ", ("     $fn      " for fn in fieldnames(S1))...)
    println(io, "    ", (" __________ " for fn in fieldnames(S1))...)
    for fn in propertynames(mt)
        mc = getproperty(mt, fn)
        println(io, "$fn | ", (fmt_g(getproperty(mc, fnn)) for fnn in propertynames(mc))...)
    end
end

Base.show(io::IO, v::AbstractPVector) = print(io, "[$(getfield(v,1)),$(getfield(v,2)),$(getfield(v,3))]")
Base.show(io::IO, ::MIME"text/plain", v::AbstractPVector) = print(io, "[$(getfield(v,1)),$(getfield(v,2)),$(getfield(v,3))]")


using Format
fmt_g(f::Vector{Float64}) = "Vector{Float64}"
fmt_g(f::Float64) = format(" {:+.3e} ", f)
fmt_g(::Missing) = fmt_g(0.0)
struct MetricTensorJacobian{V}
    value::V
end


struct CSMetrics{S,G<:AbstractMetricTensor{S},H<:AbstractNormalizationMetric{S},J<:MetricTensorJacobian,E<:AbstractBasisVectors{S},N<:AbstractUnitBasisVectors{S}} <: AbstractCSMetrics{S}
    cs::S
    g::G
    h::H
    J::J
    𝐞::E
    𝐞̂::N
end

struct CSMetricsDefinition{S,M}
    cs::S
    metrics::M
end
(def::CSMetricsDefinition{Symbol,Missing})(args...) = CSMetrics{CoordinateSystem(def.cs)}(args...)
CoordinateSystem(s::Symbol) = cs_dic[s]

CSMetrics{S}(arr_gen::ArrayGenerator) where {S} = CSMetrics(UnitBasisVectors(S, arr_gen))

function CSMetrics(𝐞::AbstractBasisVectors{S}) where {S}
    g = MetricTensor(𝐞)
    h = NormalizationMetric(g)
    J = MetricTensorJacobian(det(g))
    𝐞̂ = UnitBasisVectors(𝐞)
    CSMetrics(S(), g, h, J, 𝐞, 𝐞̂)
end

getfield_(v::Real) = v
getfield_(::Missing) = 0.0
getfield_(g::Union{MetricTensor,MetricTensorComponent}, i, k) = getfield_(getfield(g, i), k)
getfield_(g::Missing, k) = 0.0
getfield_(g::Array, k) = g[k]
import LinearAlgebra

function det(g::MetricTensor)
    t, dims = get_eltype_size(g)
    if !(dims == 0)
        M = Array{Matrix{t}}(undef, dims...)
        d = zeros(dims...)
        for k in eachindex(M)
            M[k] = Array{t}(undef, 3, 3)
        end

        for i in 1:3
            for j = 1:3
                for k in eachindex(M)
                    M[k][i, j] = getfield_(getfield(g, i), j, k)
                end
            end
        end

        for k in eachindex(M)
            d[k] = LinearAlgebra.det(M[k])
        end
        return d
    else

        M = zeros(3, 3)
        for i in 1:3
            for j = 1:3
                M[i, j] = getfield_(getfield(g, i), j)[k]
            end
        end

        return det(M)
    end
end


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
compute!(e::AbstractBasisVectors, a, b , c)  = sum(d * getproperty(e, fn) for (d, fn) in zip((a, b, c), propertynames(e)))

⋅(v1::AbstractComponentVector{S1}, v2::AbstractComponentVector{S2}, g::BasisChangeTensor{G1,Missing,Missing,S1,S2}, args::Vararg{Int64,N}) where {N,G1,S1,S2} = ⋅(getfield(v1, 1), v2, getfield(g, 1), args...)
⋅(v1::AbstractComponentVector{S1}, v2::AbstractComponentVector{S2}, g::BasisChangeTensor{Missing,Missing,G3,S1,S2}, args::Vararg{Int64,N}) where {N,G3,S1,S2} = ⋅(getfield(v1, 3), v2, getfield(g, 3), args...)
⋅(v1::AbstractComponentVector{S1}, v2::AbstractComponentVector{S2}, g::BasisChangeTensor{Missing,G2,Missing,S1,S2}, args::Vararg{Int64,N}) where {N,G2,S1,S2} = ⋅(getfield(v1, 2), v2, getfield(g, 2), args...)
⋅(v1::AbstractComponentVector{S1}, v2::AbstractComponentVector{S2}, g::BasisChangeTensor{G1,G2,Missing,S1,S2}, args::Vararg{Int64,N}) where {N,G1,G2,S1,S2} = ⋅(getfield(v1, 1), v2, getfield(g, 1), args...) + ⋅(getfield(v1, 2), v2, getfield(g, 2), args...)
⋅(v1::AbstractComponentVector{S1}, v2::AbstractComponentVector{S2}, g::BasisChangeTensor{Missing,G2,G3,S1,S2}, args::Vararg{Int64,N}) where {N,G2,G3,S1,S2} = ⋅(getfield(v1, 3), v2, getfield(g, 3), args...) + ⋅(getfield(v1, 2), v2, getfield(g, 2), args...)
⋅(v1::AbstractComponentVector{S1}, v2::AbstractComponentVector{S2}, g::BasisChangeTensor{G1,Missing,G3,S1,S2}, args::Vararg{Int64,N}) where {N,G1,G3,S1,S2} = ⋅(getfield(v1, 1), v2, getfield(g, 1), args...) + ⋅(getfield(v1, 3), v2, getfield(g, 3), args...)
⋅(v1::AbstractComponentVector{S1}, v2::AbstractComponentVector{S2}, g::BasisChangeTensor{G1,G2,G3,S1,S2}, args::Vararg{Int64,N}) where {N,G1,G2,G3,S1,S2} = ⋅(getfield(v1, 1), v2, getfield(g, 1),args...) + ⋅(getfield(v1, 2), v2, getfield(g, 3),args...) + ⋅(getfield(v1, 3), v2, getfield(g, 3),args...)

⋅(v1::AbstractComponentVector{S1}, v2::AbstractComponentVector{S2}, g::BasisChangeTensor{G1,Missing,Missing,S1,S2}) where {G1,S1,S2} = ⋅(getfield(v1, 1), v2, getfield(g, 1))
⋅(v1::AbstractComponentVector{S1}, v2::AbstractComponentVector{S2}, g::BasisChangeTensor{Missing,Missing,G3,S1,S2}) where {G3,S1,S2} = ⋅(getfield(v1, 3), v2, getfield(g, 3))
⋅(v1::AbstractComponentVector{S1}, v2::AbstractComponentVector{S2}, g::BasisChangeTensor{Missing,G2,Missing,S1,S2}) where {G2,S1,S2} = ⋅(getfield(v1, 2), v2, getfield(g, 2))
⋅(v1::AbstractComponentVector{S1}, v2::AbstractComponentVector{S2}, g::BasisChangeTensor{G1,G2,Missing,S1,S2}) where {G1,G2,S1,S2} = ⋅(getfield(v1, 1), v2, getfield(g, 1)) .+ ⋅(getfield(v1, 2), v2, getfield(g, 2))
⋅(v1::AbstractComponentVector{S1}, v2::AbstractComponentVector{S2}, g::BasisChangeTensor{Missing,G2,G3,S1,S2}) where {G2,G3,S1,S2} = ⋅(getfield(v1, 3), v2, getfield(g, 3))    .+ ⋅(getfield(v1, 2), v2, getfield(g, 2))
⋅(v1::AbstractComponentVector{S1}, v2::AbstractComponentVector{S2}, g::BasisChangeTensor{G1,Missing,G3,S1,S2}) where {G1,G3,S1,S2} = ⋅(getfield(v1, 1), v2, getfield(g, 1)) .+ ⋅(getfield(v1, 3), v2, getfield(g, 3))
⋅(v1::AbstractComponentVector{S1}, v2::AbstractComponentVector{S2}, g::BasisChangeTensor{G1,G2,G3,S1,S2}) where {G1,G2,G3,S1,S2} =   ⋅(getfield(v1, 1), v2, getfield(g, 1)) .+ ⋅(getfield(v1, 2), v2, getfield(g, 3)) .+ ⋅(getfield(v1, 3), v2, getfield(g, 3))


⋅(v1::ComponentVector{T,U,V,S}, v2::ComponentVector{T,U,V,S}, index::Vararg{Int64,N}) where {N,T,U,V,S} = getfield(v1, 1)[index...] * getfield(v2, 1)[index...] + getfield(v1, 2)[index...] * getfield(v2, 2)[index...] + getfield(v1, 3)[index...] * getfield(v2, 3)[index...]
⋅(v1::ComponentVector{T,U,V,S}, v2::ComponentVector{T,U,V,S}) where {T,U,V,S} = getfield(v1, 1) * getfield(v2, 1) + getfield(v1, 2) * getfield(v2, 2) + getfield(v1, 3) * getfield(v2, 3)

#⋅(v1::ComponentVector{T,U,V,S}, v2::ComponentVector{T,U,V,S}, index::Vararg{Int64,N}) where {N,T,U,V,S} = getfield(v1, 1)[index...] * getfield(v2, 1)[index...] + getfield(v1, 2)[index...] * getfield(v2, 2)[index...] + getfield(v1, 3)[index...] * getfield(v2, 3)[index...]
#⋅(v1::ComponentVector{T,U,V,S}, v2::ComponentVector{T,U,V,S}) where {N,T,U,V,S} = getfield(v1, 1) * getfield(v2, 1) + getfield(v1, 2) * getfield(v2, 2) + getfield(v1, 3) * getfield(v2, 3)


⋅(v1::ComponentVector{Missing,U,V,S}, v2::ComponentVector{Missing,U,V,S}, index::Vararg{Int64,N}) where {N,U,V,S} = getfield(v1, 1)[index...] * getfield(v2, 1)[index...] + getfield(v1, 2)[index...] * getfield(v2, 2)[index...] + getfield(v1, 3)[index...] * getfield(v2, 3)[index...]
#⋅(v1::ComponentVector{Missing,U,V,S}, v2::ComponentVector{Missing,U,V,S}, index::Vararg{Int64,N}) where {N,U,V,S} = getfield(v1, 1)[index...] * getfield(v2, 1)[index...] + getfield(v1, 2)[index...] * getfield(v2, 2)[index...] + getfield(v1, 3)[index...] * getfield(v2, 3)[index...]

⋅(v1::ComponentVector{U,Missing,Missing,S}, v2::ComponentVector{V,Missing,Missing,S}, index::Vararg{Int64,N}) where {N,U,V,S} = getfield(v1, 1)[index...] * getfield(v2, 1)[index...] 

⋅(g::AbstractDyadicTensor{S}, v::AbstractCSVector{S}, args...) where {S} = RightContraction{S}((Dot(getproperty(g, fn), v) for fn in propertynames(g))...)
⋅(v1::ComponentVector{Missing,U,V,S}, v2::ComponentVector{Missing,U,V,S}, index::Vararg{Int64,N}) where {N,V, T<:UArray{N},U<:UArray{N},S} = getfield(v1, 1)[index...] * getfield(v2, 1)[index...] + getfield(v1, 2)[index...] * getfield(v2, 2)[index...] + getfield(v1, 3)[index...] * getfield(v2, 3)[index...]
# ⋅(v1::ComponentVector{T,U,V,S}, v2::ComponentVector{T,U,V,S}, index::Vararg{Int64,N}) where {N,T<:UArray{N},U<:UArray{N},S} = getfield(v1, 1)[index...] * getfield(v2, 1)[index...] + getfield(v1, 2)[index...] * getfield(v2, 2)[index...] + getfield(v1, 3)[index...] * getfield(v2, 3)[index...]
# ⋅(v1::ComponentVector{T,U,V,S}, v2::ComponentVector{T,U,V,S}, index::Vararg{Int64,N}) where {N,T<:UArray{N},U<:UArray{N},S} = getfield(v1, 1)[index...] * getfield(v2, 1)[index...] + getfield(v1, 2)[index...] * getfield(v2, 2)[index...] + getfield(v1, 3)[index...] * getfield(v2, 3)[index...]
# ⋅(v1::ComponentVector{T,U,V,S}, v2::ComponentVector{T,U,V,S}, index::Vararg{Int64,N}) where {N,T<:UArray{N},U<:UArray{N},S} = getfield(v1, 1)[index...] * getfield(v2, 1)[index...] + getfield(v1, 2)[index...] * getfield(v2, 2)[index...] + getfield(v1, 3)[index...] * getfield(v2, 3)[index...]

⋅(v1::ComponentVector{T,T,T,S}, v2::ComponentVector{U,U,U,S}) where {S,T<:UArray,U<:UArray} = @views getfield(v1, 1) .* getfield(v2, 1) .+ getfield(v1, 2) .* getfield(v2, 2) .+ getfield(v1, 3) .* getfield(v2, 3)
⋅(v1::ComponentVector{T,T,T,S}, v2::ComponentVector{U,U,U,S}) where {S,T<:Union{Real,DyadicProduct},U<:Union{Real,DyadicProduct}} = getfield(v1, 1) * getfield(v2, 1) + getfield(v1, 2) * getfield(v2, 2) + getfield(v1, 3) * getfield(v2, 3)

⋅(v1::UArray, v2::AbstractComponentVector{S}, g::ComponentVector{G1,G2,G3,S}, index::Vararg{Int64,N}) where {N,G1,G2,G3,S} = v1[index...] * ⋅(v, g, index...)
⋅(v1::UArray, v2::AbstractComponentVector{S}, g::ComponentVector{G1,G2,G3,S}) where {N,G1,G2,G3,S} = v1 .* ⋅(v2, g)

⋅(v2::AbstractComponentVector{S}, g::ComponentVector{G1,G2,G3,S}, index::Vararg{Int64,N}) where {N,G1,G2,G3,S} = v1[index...] * ⋅(v, g, index...)
⋅(v1::T, v2::AbstractComponentVector{S}) where {S,T<:UArray,U<:UArray} = @views getfield(v1, 1) .* getfield(v2, 1) .+ getfield(v1, 2) .* getfield(v2, 2) .+ getfield(v1, 3) .* getfield(v2, 3)
⋅(v1::T, v2::AbstractComponentVector{S}) where {S,T<:Union{Real,DyadicProduct},U<:Union{Real,DyadicProduct}} = getfield(v1, 1) * getfield(v2, 1) + getfield(v1, 2) * getfield(v2, 2) + getfield(v1, 3) * getfield(v2, 3)


include("operators.jl")

# iterator over cs
function Base.iterate(vars::CoordinateSystem, state=1)
    state > length(vars) && return nothing
    return (getfield(vars, state), state + 1)
end

function Base.iterate(vars::PVector, state=1)
    state > length(vars) && return nothing
    return (getfield(vars, state), state + 1)
end

function Base.iterate(vars::PTensor, state=1)
    state > length(vars) && return nothing
    return (getfield(vars, state), state + 1)
end

function Base.iterate(vars::PTensorComponent, state=1)
    state > length(vars) && return nothing
    return (getfield(vars, state), state + 1)
end

Base.length(cs::T) where {T<:Union{PVector,PTensor, PTensorComponent}} = fieldcount(T)

Base.length(cs::T) where {T<:CoordinateSystem} = fieldcount(T)

get_component_names(v::AbstractPTensor) = Base.IteratorsMD.flatten(((((Symbol(fn * "_" * fn2) for fn2 in propertynames(getproperty(v, fn)))...,) for fn in propertynames(v))...,)) 
get_component_names(v::AbstractPVector) = propertynames(v)
get_components(::AbstractPhysicsCoordinates{S}) where {S} = [s() for s in fieldtypes(S)]
get_components(::AbstractPVector{S,S,N}) where {S,N} = [s() for s in fieldtypes(S)]
get_components(::AbstractPTensor{S,N}) where {S,N} = [s() for s in fieldtypes(S)]
get_components(::AbstractPTensor, c::Component) = [c]
get_components(::AbstractPTensor, c::Tuple{Component,Component}) = [c]
get_components(::AbstractPTensorComponent{S,N}) where {S,N} = [s() for s in fieldtypes(S)]
get_coordinates(cs::S) where {S} = [Coordinate(s()) for s in fieldtypes(S)]
Coordinate(c::Component) = Coordinate(get_component_name(c))
export get_components
# Metrics{S1,S2}
#@node_def PointNode 1D = [x] 2D = [y]
#@node_def VectorNode 1D = [x] 2D = [y]


# OldBasisData(𝓍) = OldBasisData(𝓍,missing, missing)
# OldBasisData(𝓍,𝓎) = OldBasisData(𝓍,missing)

# FieldAlignedCoordinateSystem1D(v::AbstractVectorVariable) = OldBasisData()


# project(data::Data{}, g::MetricTensor{X,Y,Z}, ::Component{:X}) where {X<:Missing,Y<:Missing,Z<:Missing} = data.x(args...) 
# project(data::Data{}, g::MetricTensor{X,Y,Z}, ::Component{:Y}) where {X<:Missing,Y<:Missing,Z<:Missing} = data.y(args...) 
# project(data::Data{}, g::MetricTensor{X,Y,Z}, ::Component{:Z}) where {X<:Missing,Y<:Missing,Z<:Missing} = data.z(args...) 


# project(data::Data{}, g::MetricTensor{X,Y,Z}, ::Component{:x}) = data.x(args...) * g.xx(args...) + data.y(args...)  * g.xy(args...) + data.z(args...)  * g.xz(args...) 
# project(data::Data{}, g::MetricTensor{X,Y,Z}, ::Component{:y}) = data.x(args...) * g.yx(args...) + data.y(args...)  * g.yy(args...) + data.z(args...)  * g.yz(args...) 
# project(data::Data{}, g::MetricTensor{X,Y,Z}, ::Component{:z}) = data.x(args...) * g.zx(args...) + data.y(args...)  * g.zy(args...) + data.z(args...)  * g.zz(args...) 

# project(data::Data{}, g::MetricTensor{X,Y,Z}, ::Component{:x}) = data.x(args...) * g.xx(args...) + data.y(args...)  * g.xy(args...) + data.z(args...)  * g.xz(args...) 
# project(data::Data{}, g::MetricTensor{X,Y,Z}, ::Component{:y}) = data.x(args...) * g.yx(args...) + data.y(args...)  * g.yy(args...) + data.z(args...)  * g.yz(args...) 
# project(data::Data{}, g::MetricTensor{X,Y,Z}, ::Component{:z}) = data.x(args...) * g.zx(args...) + data.y(args...)  * g.zy(args...) + data.z(args...)  * g.zz(args...) 

# project(data::Data{}, g::MetricTensor{X,Y,Z}, ::Component{:x}) where {X,Y,Z}= data.x(args...) * g.xx(args...) + data.y(args...)  * g.xy(args...) 
# project(data::Data{}, g::MetricTensor{X,Y,Z}, ::Component{:y}) = data.x(args...) * g.yx(args...) + data.y(args...)  * g.yy(args...) 
# project(data::Data{}, g::MetricTensor{X,Y,Z}, ::Component{:z}) = 


# function (p::Projection{A,B})(args...)

# end

function get_component(v::Union{AbstractPVector, AbstractCSVector},c::Int64) 
    getfield(v, c)
end

Component(s::Symbol) = occursin("_", string(s)) ? Tuple(Component{s_}() for s_ in Symbol.(split(string(s), "_"))) : Component{s}()
Component(s::Tuple{Symbol,Symbol}) = (Component(s[1]), Component(s[2]))
Coordinate(s::Symbol) = occursin("_", string(s)) ? Tuple(Coordinate{s_}() for s_ in Symbol.(split(string(s), "_"))) : Coordinate{s}()
Coordinate(s::Tuple{Symbol,Symbol}) = (Coordinate(s[1]), Coordinate(s[2]))
Component(c::Coordinate{T}) where T = Component(get_coordinate_name(c))
Coordinate(::Missing) = missing
end
