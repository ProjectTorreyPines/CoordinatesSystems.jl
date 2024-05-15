#=
Author: Jerome Guterl (guterlj@fusion.gat.com)
 Company: General Atomics
 coordinates_systems.jl (c) 2024=#

abstract type CoordinatesSystem end

abstract type AbstractCSObject{S} end

abstract type AbstractCSTensor{S} <: AbstractCSObject{S} end
abstract type AbstractCSVector{S} <: AbstractCSObject{S} end
abstract type AbstractCSVectors{S} <: AbstractCSObject{S} end

abstract type AbstractPVector{S} <: AbstractCSVector{S} end
# abstract type AbstractPVectors{S} <: AbstractCSVectors{S} end

abstract type AbstractBasisVectors{S} <: AbstractCSVectors{S} end
abstract type AbstractBasisVector{S} <: AbstractCSVector{S} end
abstract type AbstractUnitBasisVectors{S} <: AbstractBasisVectors{S} end
abstract type AbstractUnitBasisVector{S} <: AbstractCSVector{S} end

# abstract type AbstractComponentOperatorCS{S} end
abstract type AbstractPhysicsCoordinates{S} <: AbstractCSVector{S} end
abstract type AbstractTensorComponent{S} <: AbstractCSVector{S} end
abstract type AbstractPTensorComponent{S} <: AbstractCSVector{S} end
abstract type AbstractMetricTensorComponent{S} <: AbstractCSVector{S} end
abstract type AbstractBasisChangeComponent{S} <: AbstractCSVector{S} end
# abstract type AbstractComponentOperator{S,O} <: AbstractCSComponentObject end
# abstract type ComponentOperator{V1,V2,V3,S,O} <: AbstractComponentOperator{S,O} end
abstract type AbstractBasisComponent{S} end
abstract type AbstractPhysicsCoordinate{S} end
# abstract type AbstractPVector{S1,S2,N} <: AbstractCSComponentObject end
# abstract type AbstractPTensorComponent{S,N} <: AbstractCSVector{S} end
# abstract type PVector{V1,V2,V3,P1,P2,P3,N,S1,S2} <: AbstractPVector{S1,S2,N} end
# abstract type PTensor{V1,V2,V3,N,S} <: AbstractPTensor{S,N} end
# abstract type PTensorComponent{V1,V2,V3,N,S} <: AbstractPTensorComponent{S,N} end
abstract type PVector{E1,E2,E3,S} <: AbstractPVector{S} end
abstract type PhysicsCoordinates{E1,E2,E3,S} <: AbstractPhysicsCoordinates{S} end
abstract type BasisVector{E1,E2,E3,S} <: AbstractBasisVector{S} end
abstract type BasisVectors{E1,E2,E3,S} <: AbstractBasisVectors{S} end
abstract type UnitBasisVector{E1,E2,E3,S} <: AbstractUnitBasisVector{S} end
abstract type UnitBasisVectors{E1,E2,E3,S} <: AbstractUnitBasisVectors{S} end
abstract type BasisChangeComponent{E1,E2,E3,S} <: AbstractBasisChangeComponent{S} end
abstract type MetricTensorComponent{E1,E2,E3,S} <: AbstractMetricTensorComponent{S} end
abstract type TensorComponent{E1,E2,E3,S} <: AbstractTensorComponent{S} end
abstract type PTensorComponent{E1,E2,E3,S} <: AbstractPTensorComponent{S} end
abstract type AbstractTensor{S} <: AbstractCSTensor{S} end
abstract type AbstractDiagonalTensor{S} <: AbstractCSTensor{S} end
abstract type AbstractPTensor{S} <: AbstractCSTensor{S} end
abstract type AbstractPDiagonalTensor{S} <: AbstractCSTensor{S} end
abstract type AbstractMetricTensor{S} <: AbstractTensor{S} end
abstract type AbstractCSMetrics{S} <: AbstractCSTensor{S} end
abstract type MetricTensor{E1,E2,E3,S} <: AbstractMetricTensor{S} end
abstract type Tensor{E1,E2,E3,S} <: AbstractTensor{S} end
abstract type PTensor{E1,E2,E3,S} <: AbstractPTensor{S} end
abstract type DiagonalTensor{E1,E2,E3,S} <: AbstractDiagonalTensor{S} end
abstract type PDiagonalTensor{E1,E2,E3,S} <: AbstractPDiagonalTensor{S} end
# abstract type AbstractDyadicTensorComponent{S} end

abstract type AbstractBasisChangeTensor{S1,S2} end



abstract type BasisChangeTensor{G1,G2,G3,S1,S2} <: AbstractBasisChangeTensor{S1,S2} end
# abstract type AbstractRightContraction{S} <: AbstractComponentOperatorCS{S} end

# abstract type AbstractNormalizationMetric{S} end


abstract type Component{T} end
abstract type Coordinate{T} end


get_cs_type(::AbstractCSMetrics{S}) where {S} = S
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

@add_coordinates_system Cartesian x = X y = Y z = Z
@add_coordinates_system ParallelFieldAligned ǁ = Parallel ⊥ = Crossfield ʌ = Diamagnetic
@add_coordinates_system PoloidalFieldAligned x = Poloidal y = Crossfield ϕ = Toroidal
@add_coordinates_system Cylindrical r = Radial θ = Poloidal z = Z
@add_coordinates_system Spherical r = Radial θ = Poloidal Ψ = Azimuthal
@add_coordinates_system Toroidal r = Radial θ = Poloidal ϕ = Toroidal
@add_coordinates_system PseudoToroidal R = Radial Z = Vertical ϕ = Toroidal

@add_basis_change_tensor
#@add_scalar_product
# @add_pvector
# @add_ptensor
#@add_compute_projection
include(get_coordinate_systems_filename())
function Base.show(io::IO, cs::Union{CoordinatesSystem,Type{<:CoordinatesSystem}})
    printstyled(io, "CoordinatesSystem[$(sdoc(cs))]"; color=20, bold=true)
    printstyled(io, "($(join(string.(get_component_names(cs)),",")))"; bold=true)
end

