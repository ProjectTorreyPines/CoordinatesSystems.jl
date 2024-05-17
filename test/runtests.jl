using CoordinatesSystems, Symbolics
using Test

@testset "CoordinatesSystems.jl" begin
    @testset "Smybolic" begin
        include("symbolics.jl")
    end
    @testset "Operators" begin
        include.(filter(contains(r".jl$"), readdir(joinpath(@__DIR__, "operators"); join=true)))
    end
    @testset "Metric Tensor" begin
        include("metric_tensor.jl")
    end
    @testset "Array" begin
        include("array.jl")
    end
end
