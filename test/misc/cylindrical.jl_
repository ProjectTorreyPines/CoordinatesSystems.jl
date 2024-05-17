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
import CoordinatesSystems: CSMetrics, RightContraction, ⊗, PVector, →, UnitBasisVectors, NormalizationMetric, ⋅, AbstractBasisVectors, ArrayGenerator, PVector, BasisVectors, CartesianCS, CylindricalCS, MetricTensor


𝐞̂ = UnitBasisVectors(CartesianCS)
using Symbolics
@variables r φ z
𝐑 = r * cos(φ) * 𝐞̂.x + r * sin(φ) * 𝐞̂.y + z * 𝐞̂.z

𝐮 = BasisVectors{CylindricalCS}(𝐑, [r, φ, z])
𝐮̂ = UnitBasisVectors(𝐮)
g̅̅ = MetricTensor(𝐮)
g̅̅(1.0, 1.0, 1.0)
Λ̅̅ = 𝐮̂ → 𝐞̂
𝐱 = 𝐞̂(2.0, 1.0, 0.0)



CSMetrics(𝐞̂)

a = 2.0
b = 3.0
c = 4.0
d = 5.0
𝐱 = 𝐞̂(a, b, 0.0)
𝐛̂ = UnitBasisVectors(CylindricalCS)
𝐯 = 𝐛̂(c, d, 0.0)
𝐰 = 𝐛̂(a, b, 0.0)
⋅(𝐱, 𝐯, Λ̅̅) == c * cos(φ) * a - sin(φ) * d * a + b * sin(φ) * d + b * cos(φ) * c

𝐩 = PVector(𝐯, Λ̅̅)
import CoordinatesSystems:⊗
T̅̅ = 𝐯 ⊗ 𝐰
𝐭 = -(T̅̅ ⋅ 𝐯)
𝐭.r()