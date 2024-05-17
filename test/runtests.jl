using CoordinatesSystems, Symbolics
using Test

@testset "CoordinatesSystems.jl" begin
    @testset "Symbolic" begin
        include("symbolics.jl")
    end
    @testset "Operators" begin
        include("operators/divergence.jl")
        include("operators/dot_product.jl")
        include("operators/outer_product.jl")
        include("operators/cross_product.jl")
    end
    @testset "Metric Tensor" begin
        include("metric_tensor.jl")
    end
    @testset "Array" begin
        include("array.jl")
    end
end
