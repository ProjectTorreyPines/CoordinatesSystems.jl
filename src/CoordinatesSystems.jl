module CoordinatesSystems 
include("array_generators.jl")
generate_coordinate_systems = true
export Component,Coordinate


UArray{D} = Array{Float64,D}
abstract type CoordinateSystem end
abstract type AbstractPhysicsComponentVector{S} end
abstract type AbstractPhysicsComponentVectors{S} end
abstract type AbstractBasisVectors{S} end
abstract type AbstractBasisVector{S} end
abstract type AbstractUnitBasisVectors{S} end
abstract type AbstractUnitBasisVector{S} end
abstract type BasisVector{E1,E2,E3,S<:CoordinateSystem} <: Union{AbstractBasisVector{S}} end
abstract type BasisVectors{V1,V2,V3,S<:CoordinateSystem} <: AbstractBasisVectors{S} end
abstract type UnitBasisVector{E1,E2,E3,S<:CoordinateSystem} <: Union{AbstractUnitBasisVector{S}} end
abstract type UnitBasisVectors{V1,V2,V3,S<:CoordinateSystem} <: AbstractUnitBasisVectors{S} end

abstract type PhysicsComponentVector{E1,E2,E3,S} <: AbstractPhysicsComponentVector{S} end
abstract type PhysicsComponentVectors{E1,E2,E3,S} <: AbstractPhysicsComponentVectors{S} end

abstract type AbstractComponentOperatorCS{S} end

abstract type AbstractTensorComponent{S<:CoordinateSystem} end
abstract type AbstractMetricTensorComponent{S<:CoordinateSystem} end 
abstract type AbstractBasisChangeComponent{S<:CoordinateSystem} end 
abstract type AbstractComponentOperator{S,O} end
abstract type ComponentOperator{V1,V2,V3,S,O} <: AbstractComponentOperator{S,O} end
abstract type AbstractBasisComponent{S<:CoordinateSystem} end
abstract type AbstractPhysicsCoordinate{S} end
abstract type AbstractPVector{N} end
abstract type PVector{V1,V2,V3,P1,P2,P3,N,S1,S2} <: AbstractPVector{N}  end
abstract type PhysicsCoordinates{V1,V2,V3,S} <: AbstractPhysicsCoordinate{S} end
abstract type TensorComponent{G1,G2,G3,S<:CoordinateSystem} <: AbstractTensorComponent{S} end
abstract type MetricTensorComponent{G1,G2,G3,S<:CoordinateSystem} <: AbstractMetricTensorComponent{S} end
abstract type BasisComponent{G1,G2,G3,S<:CoordinateSystem} <: AbstractBasisComponent{S} end
abstract type AbstractDyadicTensor{S<:CoordinateSystem} end
abstract type AbstractDyadicTensorComponent{S} end
abstract type DyadicTensor{D1,D2,D3,S} <: AbstractDyadicTensor{S} end
abstract type DyadicTensorComponent{D1,D2,D3,S<:CoordinateSystem} <: AbstractDyadicTensorComponent{S} end
abstract type AbstractBasisChangeTensor{S1,S2} end
abstract type BasisChangeComponent{G1,G2,G3,S<:CoordinateSystem} <: AbstractBasisChangeComponent{S} end
abstract type AbstractTensor{S<:CoordinateSystem} end
abstract type AbstractMetricTensor{S<:CoordinateSystem} <:AbstractTensor{S} end

abstract type MetricTensor{G1,G2,G3,S<:CoordinateSystem} <: AbstractMetricTensor{S} end
abstract type Tensor{G1,G2,G3,S<:CoordinateSystem} <: AbstractTensor{S} end
abstract type BasisChangeTensor{G11, G12, G13, G22, G23, G33, S1<:CoordinateSystem,S2<:CoordinateSystem} <: AbstractBasisChangeTensor{S1,S2} end
abstract type AbstractRightContraction{S} <: AbstractComponentOperatorCS{S} end 
abstract type RightContraction{R1,R2,R3,S} <: AbstractRightContraction{S} end 
abstract type AbstractNormalizationMetric{S} end
abstract type NormalizationMetric{G1,G2,G3,S<:CoordinateSystem} <: AbstractNormalizationMetric{S} end
NormalizationMetric(g::AbstractMetricTensor{S}) where {S} = NormalizationMetric{S}((1.0 / sqrt(getproperty(getproperty(g, fn), fn)) for fn in propertynames(g))...)

PhysicsCoordinates1D{V1,S} = PhysicsCoordinates{V1,Missing,Missing,S} where {V1,S}
PhysicsCoordinates2D{V1,V2,S} = PhysicsCoordinates{V1,V2,Missing,S} where {V1,V2,S}
PhysicsCoordinates3D{V1,V2,V3,S} = PhysicsCoordinates{V1,V2,V3,S} where {V1,V2,V3,S}
PhysicsCoordinates1D{S}(arr_gen::ArrayGenerator) where {S<:CoordinateSystem} = PhysicsCoordinates{S}(arr_gen(), missing, missing)
PhysicsCoordinates2D{S}(arr_gen::ArrayGenerator) where {S<:CoordinateSystem} = PhysicsCoordinates{S}(arr_gen(), arr_gen(), missing)
PhysicsCoordinates3D{S}(arr_gen::ArrayGenerator) where {S<:CoordinateSystem} = PhysicsCoordinates{S}(arr_gen(), arr_gen(), arr_gen())
PhysicsCoordinates2D{S}(arr_gen::ArrayGenerator) where {S<:CoordinateSystem} = PhysicsCoordinates{S}(arr_gen(), arr_gen(), missing)
Tensor{S}(arr_gen::ArrayGenerator) where {S<:CoordinateSystem} = Tensor{S}(TensorComponent{S}(arr_gen), TensorComponent{S}(arr_gen), TensorComponent{S}(arr_gen))
TensorComponent{S}(arr_gen::ArrayGenerator) where S = TensorComponent{S}(arr_gen(),arr_gen(),arr_gen())
AbstractComponentVector{S} = Union{AbstractDyadicTensorComponent{S},AbstractBasisChangeComponent{S},AbstractUnitBasisVector{S},AbstractPhysicsComponentVector{S}}
ComponentVector{E1,E2,E3,S} = Union{DyadicTensorComponent{E1,E2,E3,S}, BasisChangeComponent{E1,E2,E3,S},UnitBasisVector{E1,E2,E3,S},PhysicsComponentVector{E1,E2,E3,S}}
ComponentVectors{E1,E2,E3,S} = Union{UnitBasisVector{E1,E2,E3,S},PhysicsComponentVectors{E1,E2,E3,S}}
AbstractCSVector{S} = Union{AbstractBasisVector{S},AbstractUnitBasisVector{S},AbstractPhysicsComponentVector{S}}
AbstractCSVectors{S} = Union{AbstractBasisVectors{S},AbstractUnitBasisVectors{S},AbstractPhysicsComponentVectors{S}}


struct Component{T} end
struct Coordinate{T} end
ε = 1e-14
threshold_metric_component(a::Float64;ε=1e-14) = abs(a) < ε ? missing : a
threshold_metric_component(a::Any;ε=1e-14) = args
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
@add_coordinate_type X
@add_coordinate_type Y 
@add_coordinate_type Z

@add_coordinate_system CartesianCS x = X y = Y z = Z
@add_coordinate_system ParallelFieldAlignedCS ǁ = Parallel ⊥ = Crossfield ʌ = Diamagnetic
@add_coordinate_system PoloidalFieldAlignedCS x = Poloidal y = Crossfield ϕ = Toroidal 
@add_coordinate_system CylindricalCS r = Radial θ = Poloidal z = Z
@add_coordinate_system SphericalCS r = Radial θ = Poloidal Ψ = Azimuthal
@add_coordinate_system ToroidalCS r = Radial θ = Poloidal ϕ = Toroidal
@add_basis_change_tensor
@add_scalar_product
@add_pvector
@add_compute_projection
include(get_coordinate_systems_filename())

struct ComponentProjection{C<:Component,V<:AbstractCSVector, M<:BasisChangeComponent}
    component :: C
    v::V
    m::M
end
Base.getindex(p::ComponentProjection, args...) = p(args...)
(p::ComponentProjection)(args...) = compute_component!(p.v, p.m)
compute_component!(v,m,args...) = ⋅(v,m,args...)
BasisVectors(S::Type{<:CoordinateSystem}, arr_gen::ArrayGenerator) = BasisVectors{S}(BasisVector{S}(arr_gen(; fill=1), arr_gen(; fill=0), arr_gen(; fill=0)), BasisVector{S}(arr_gen(; fill=0), arr_gen(; fill=1), arr_gen(; fill=0)), BasisVector{S}(arr_gen(; fill=0), arr_gen(; fill=0), arr_gen(; fill=1)))
UnitBasisVectors(S::Type{<:CoordinateSystem}, arr_gen::ArrayGenerator) = UnitBasisVectors{S}(UnitBasisVector{S}(arr_gen(; fill=1), arr_gen(; fill=0), arr_gen(; fill=0)), UnitBasisVector{S}(arr_gen(; fill=0), arr_gen(; fill=1), arr_gen(; fill=0)), UnitBasisVector{S}(arr_gen(; fill=0), arr_gen(; fill=0), arr_gen(; fill=1)))
UnitBasisVectors(u::AbstractBasisVectors{S}) where S= UnitBasisVectors{S}((UnitBasisVector(getproperty(u,fn)) for fn in propertynames(u))...)
UnitBasisVector(u::AbstractCSVector{S}) where {S} = UnitBasisVector{S}((getproperty(u, fn)/norm(u) for fn in propertynames(u))...)
norm(u::AbstractCSVector) = sqrt(sum((getproperty(u, fn)^2 for fn in propertynames(u))))
MetricTensor(𝐞̂₁::AbstractBasisVectors{S}) where {S} = MetricTensor{S}([AbstractMetricTensorComponent(getproperty(𝐞̂₁, fn), 𝐞̂₁) for fn in propertynames(𝐞̂₁)]...)
BasisChangeTensor(𝐞̂₁::AbstractUnitBasisVectors{S1}, 𝐞̂₂::AbstractUnitBasisVectors{S2}) where {S1,S2} = BasisChangeTensor{S1,S2}([AbstractBasisChangeComponent(getproperty(𝐞̂₂, fn), 𝐞̂₁) for fn in propertynames(𝐞̂₂)]...)
DyadicTensor(𝐞̂₁::AbstractComponentVector{S}, 𝐞̂₂::AbstractComponentVector{S}) where {S} = DyadicTensor{S}([AbstractDyadicTensorComponent(getproperty(𝐞̂₂, fn), 𝐞̂₁) for fn in propertynames(𝐞̂₂)]...)

AbstractMetricTensorComponent(𝐞̂₁::AbstractCSVector, 𝐞̂₂::AbstractBasisVectors{S}) where {S} = MetricTensorComponent{S}((getproperty(𝐞̂₂, fn) ⋅ 𝐞̂₁ for fn in propertynames(𝐞̂₂))...)
AbstractBasisChangeComponent(𝐞̂₁::AbstractCSVector, 𝐞̂₂::AbstractCSVectors{S}) where {S} = BasisChangeComponent{S}((getproperty(𝐞̂₂, fn) ⋅ 𝐞̂₁ for fn in propertynames(𝐞̂₂))...)
AbstractDyadicTensorComponent(𝐞̂₁::T, 𝐞̂₂::AbstractCSVector{S}) where {T,S} = DyadicTensorComponent{S}((DyadicProduct(getproperty(𝐞̂₂, fn), 𝐞̂₁) for fn in propertynames(𝐞̂₂))...)

→(b1::UnitBasisVectors, b2::UnitBasisVectors) = BasisChangeTensor(b1, b2)
⊗(b1::AbstractComponentVector{S}, b2::AbstractComponentVector{S}) where S = DyadicTensor(b1, b2)

abstract type Generic end
struct DyadicProduct{V1,V2}
    v1::V1
    v2::V2
end 
(dp::DyadicProduct)(args...) = dyadic_product(dp.v1,dp.v2,args...)
dyadic_product(v1::Float64, v2::Float64) = v1*v2
dyadic_product(v1::T, v2::T, args::Vararg{Int64,N}) where {N,T<:UArray} = v1[args...] * v2[args...]
Base.:*(d::DyadicProduct{Float64,Float64}, f::Float64) = d() * f
PVector{N}(v::AbstractCSVector{S1}, Λ::AbstractBasisChangeTensor{S1,S2}) where {N,S1,S2} = PVector{S1,S2,N}(vcat([getproperty(v, fn) for fn in propertynames(v)], [ComponentProjection(Component{fn}(), v, getproperty(Λ, fn)) for fn in propertynames(Λ)])...)
PVector(v::AbstractCSVector, Λ::AbstractBasisChangeTensor; N=Generic) = PVector{N}(v, Λ)
Base.:*(f::Float64, v::T) where {S,T<:AbstractCSVector{S}} = PhysicsComponentVector{S}((getproperty(v, fn) * f for fn in fieldnames(T))...)
Base.:/(f::Float64, v::T) where {S,T<:AbstractCSVector{S}} = PhysicsComponentVector{S}((getproperty(v, fn) / f for fn in fieldnames(T))...)
Base.:+(v1::T, v2::T) where {S,T<:AbstractCSVector{S}} = PhysicsComponentVector{S}((getproperty(v1, fn) + getproperty(v2, fn) for fn in fieldnames(T))...)
Base.:-(v1::T, v2::T) where {S,T<:AbstractCSVector{S}} = PhysicsComponentVector{S}((getproperty(v1, fn) - getproperty(v2, fn) for fn in fieldnames(T))...)

Base.:*(f::Vector{Float64}, v::T) where {S,T<:AbstractCSVector{S}} = PhysicsComponentVector{S}((getproperty(v, fn) .* f for fn in fieldnames(T))...)
Base.:/(f::Vector{Float64}, v::T) where {S,T<:AbstractCSVector{S}} = PhysicsComponentVector{S}((getproperty(v, fn) ./ f for fn in fieldnames(T))...)


struct Dot{V1,V2} 
    v1::V1
    v2::V2
end 
(d::Dot)(args...) = ⋅(d.v1,d.v2,args...)
⋅(g::AbstractDyadicTensor{S}, v::AbstractCSVector{S},args...) where S  = RightContraction{S}((Dot(getproperty(g,fn),v) for fn in propertynames(g))...)


RightContraction{S}(v1::V1,v2::V2,v3::V3) where {S,V1,V2,V3} = RightContraction{V1,V2,V3,S}(v1,v2,v3)

function Base.show(io::IO, mt::AbstractBasisChangeTensor{S1,S2}) where {S1,S2}
    println(io,"basis change tensor $S1 → $S2")
    println(io, "    ", ("     $fn      " for fn in fieldnames(S2))...)
    println(io, "    ", (" __________ " for fn in fieldnames(S2))...)
    for fn in propertynames(mt)
        mc = getproperty(mt,fn)
        println(io, "$fn | ", (fmt_g(getproperty(mc,fnn)) for fnn in propertynames(mc))...)
    end
end

function Base.show(io::IO, mt::AbstractMetricTensor{S1}) where {S1}
    println(io,"metric tensor $S1")
    println(io, "    ", ("     $fn      " for fn in fieldnames(S1))...)
    println(io, "    ", (" __________ " for fn in fieldnames(S1))...)
    for fn in propertynames(mt)
        mc = getproperty(mt,fn)
        println(io, "$fn | ", (fmt_g(getproperty(mc,fnn)) for fnn in propertynames(mc))...)
    end
end

using Format
fmt_g(f::Float64) = format(" {:+.3e} ", f)
fmt_g(::Missing) = fmt_g(0.0)
struct MetricTensorJacobian{V}
    value::V
end

struct MetricsCS{S,G<:AbstractMetricTensor{S},H<:AbstractNormalizationMetric{S},J<:MetricTensorJacobian,E<:BasisVectors{S}}
    g::G
    h::H
    𝒥::J
    𝐞::E
end
function MetricsCS{S}(𝐞::BasisVectors) where S
    g = AbstractMetricTensor{S}(t(arr_gen))
    h = NormalizationMetric{S}(g)
    𝒥 = MetricTensorJacobian{S}(det(g))
    MetricsCS(g,h,𝒥,𝐞)
end


struct Metrics{S1,S2,G1<:MetricTensor{S1},G2<:MetricTensor{S2},L12<:BasisChangeTensor{S1,S2},L21<:BasisChangeTensor{S2,S1}}
    m₁::G1
    m₂::G2
    Λ₁₂::L12
    Λ₂₁::L21
end

include("operators.jl")
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

end
