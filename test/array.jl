using CoordinatesSystems
import CoordinatesSystems: norm, CSMetrics, RightContraction, ⊗, PVector, →, UnitBasisVectors, NormalizationMetric, ⋅, AbstractBasisVectors, ArrayGenerator, PhysicsComponentVector, BasisVectors, CartesianCS, CylindricalCS, MetricTensor


arr_gen = ArrayGenerator(100,100)

𝐞̂ = UnitBasisVectors(CartesianCS, arr_gen)

φ = π / 4
r = 2.0
𝐞ᵣ = cos(φ) * 𝐞̂.x + sin(φ) * 𝐞̂.y
𝐞ᵩ = -sin(φ) * 𝐞̂.x + cos(φ) * 𝐞̂.y
𝐞ₖ = 𝐞̂.z

𝐮 = BasisVectors{CylindricalCS}(𝐞ᵣ, 𝐞ᵩ, 𝐞ₖ)
𝐮̂ = UnitBasisVectors(𝐮)
g̅̅ = MetricTensor(𝐮)
h = NormalizationMetric(g̅̅)
Λ̅̅ = 𝐮̂ → 𝐞̂
𝐱 = 𝐞̂(2.0, 1.0, 0.0)
norm(𝐞ₖ)
m = CSMetrics(𝐞̂)