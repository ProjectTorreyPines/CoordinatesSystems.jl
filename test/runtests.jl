using CoordinatesSystems
using Test
include.(filter(contains(r".jl$"), readdir(joinpath(@__DIR__, "operators"); join=true)))
include("metric_tensor.jl")
include("symbolics.jl")
@testset "CoordinatesSystems.jl" begin
    @testset "Smybolic" begin
        @test test_symbolic()
    end
    @testset "Operators" begin
        @test test_divergence()
        @test test_dot_product()
        @test test_dot_product_contraction_right()
    end
    @testset "Metric Tensor" begin
        @test test_spherical_metric_tensor()
        @test test_cylindrical_metric_tensor()
    end
end
