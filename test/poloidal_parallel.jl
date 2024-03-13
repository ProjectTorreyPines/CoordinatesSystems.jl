" 
x = r×cosφ
y = r×sinφ

r = x² + y² 
φ = atan(y/x)

𝐞̂ᵣ = cosφ 𝐞̂ᵢ + sinφ 𝐞̂ⱼ
𝐞̂ᵩ = -sinφ 𝐞̂ᵢ + cosφ 𝐞̂ⱼ

gᵢᵣ=  cosφ
gⱼᵣ=  sinφ
gᵢᵩ=  -sinφ
gⱼᵩ=  cosφ
gₖₖ =  1
"

using CoordinatesSystems
import CoordinatesSystems: Tensor, ParallelFieldAlignedCS, PoloidalFieldAlignedCS, RightContraction, ⊗, PVector, →, UnitBasisVectors, NormalizationMetric, ⋅, AbstractBasisVectors, ArrayGenerator, PhysicsComponentVector, BasisVectors, CartesianCS, CylindricalCS, MetricTensor

arr_gen = ArrayGenerator(1)

𝐞̂ = UnitBasisVectors(PoloidalFieldAlignedCS, arr_gen)
𝐡̂ = UnitBasisVectors(ParallelFieldAlignedCS, arr_gen)

φ = [π / 4]
r = [2.0]
 𝐞ǁ = cos.(φ) * 𝐞̂.x + sin.(φ) * 𝐞̂.ϕ
 𝐞ʌ = -sin.(φ) * 𝐞̂.x + cos.(φ) * 𝐞̂.ϕ
 𝐞⊥ = 𝐞̂.y

𝐮 = BasisVectors{ParallelFieldAlignedCS}(𝐞ǁ, 𝐞⊥, 𝐞ʌ)
𝐮̂ = UnitBasisVectors(𝐮)
g̅̅ = MetricTensor(𝐮)
h = NormalizationMetric(g̅̅)
Λ̅̅ = 𝐮̂ → 𝐞̂

κ = Tensor{ParallelFieldAlignedCS}(arr_gen)

a = 2.0
b = 3.0
c = 4.0
d = 5.0
𝐱 = 𝐞̂(a, b, 0.0)
𝐛̂ = UnitBasisVectors(CylindricalCS, arr_gen)
𝐯 = 𝐛̂(c, d, 0.0)
𝐰 = 𝐛̂(a, b, 0.0)
⋅(𝐱, 𝐯, Λ̅̅) == c * cos(φ) * a - sin(φ) * d * a + b * sin(φ) * d + b * cos(φ) * c

𝐩 = PVector(𝐯, Λ̅̅)

T̅̅ = 𝐯 ⊗ 𝐰
𝐭 = -(T̅̅ ⋅ 𝐯)
𝐭.r()