
𝐞̂ = UnitBasisVectors(CartesianCS)
test_outer_product() = all(_test_outer_product() for i in 1:10)
function _test_outer_product()
a,b,c,e,f,g = rand(6)
𝐯 = PVector{CartesianCS}(a, b, c)
𝐰 = PVector{CartesianCS}(e, f, g)
T̅̅ = 𝐯 ⊗ 𝐰
@test T̅̅.x.x == a * e && T̅̅.x.y == a * f && T̅̅.x.z == a * g && T̅̅.y.x == b * e && T̅̅.y.y == b * f && T̅̅.y.z == b * g && T̅̅.z.x == c * e && T̅̅.z.y == c * f && T̅̅.z.z == c * g
