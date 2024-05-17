using CoordinatesSystems, Test
nx = 100
ny = 90
arr_gen = ArrayGenerator(nx,ny)
a = 1.0
b= 2.0
𝐮 = PVector{CartesianCS}(arr_gen; fill= a)
𝐯 = PVector{CartesianCS}(arr_gen; fill = b)
M = 𝐮 ⋅ 𝐯
@test all(M .== 3* a * b)

A = rand(nx, ny)
B = rand(nx, ny)
C = rand(nx, ny)
𝐮 = PVector{CartesianCS}(A,B,C)
@test all(norm(𝐮) .== sqrt.(A .^ 2 .+ B .^ 2 .+ C .^ 2))

# PVector{CylindricalCS}()
# 𝐮 = BasisVectors{CylindricalCS}()
# 𝐮̂ = UnitBasisVectors(𝐮)
# g̅̅ = MetricTensor(𝐮)
# Λ̅̅ = 𝐮̂ → 𝐞̂
# 𝐱 = 𝐞̂(2.0, 1.0, 0.0)
# norm(𝐞ₖ)
# m = CSMetrics(𝐞̂)