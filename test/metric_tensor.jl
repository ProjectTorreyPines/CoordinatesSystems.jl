#=
Author: Jerome Guterl (guterlj@fusion.gat.com)
 Company: General Atomics
 metric_tensor.jl (c) 2024
=#

𝐞̂ = UnitBasisVectors(CartesianCS)
@variables r φ z
𝐑 = r * cos(φ) * 𝐞̂.x + r * sin(φ) * 𝐞̂.y + z * 𝐞̂.z
𝐮 = BasisVectors{CylindricalCS}(𝐑, [r, φ, z])
g̅̅ = MetricTensor(𝐮)
r = 3.0
g = g̅̅(r, 5.0, 8.0)

@test g.r.r == 1.0 && g.θ.θ == r^2 && g.z.z == 1.0


𝐞̂ = UnitBasisVectors(CartesianCS)
    @variables r Ψ θ
    𝐑 = r * cos(Ψ) * sin(θ) * 𝐞̂.x + r * sin(Ψ) * sin(θ) * 𝐞̂.y + r * cos(θ) * 𝐞̂.z
    𝐮 = BasisVectors{SphericalCS}(𝐑, [r, θ, Ψ])
    g̅̅ = MetricTensor(𝐮)
    r_ = 3.0
    θ_ = π / 3
    g = g̅̅(r_, θ_, 8.0)
    @test g.r.r == 1.0 && g.θ.θ == r_^2 && g.Ψ.Ψ == r_^2 * sin(θ_)^2


