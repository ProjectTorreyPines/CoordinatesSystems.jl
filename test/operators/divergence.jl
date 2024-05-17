#=
Author: Jerome Guterl (guterlj@fusion.gat.com)
 Company: General Atomics
 divergence.jl (c) 2024=#




@variables r φ z
𝐞 = BasisVectors{CylindricalCS}(r * cos(φ), r * sin(φ),z, [r, φ, z])
𝐯 = PVector{CylindricalCS}(r^3, 0,0)
g̅̅ = MetricTensor(𝐞)
∇ = Divergence(g̅̅)
d = ∇ ⋅ 𝐯

r_ = abs(rand()) +0.0001
@test isapprox(d(r_, 2.0, 3.0),4 * r_^2, atol=1e-14)
