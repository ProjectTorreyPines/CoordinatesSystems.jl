a, b, c, e, f, g = rand(6)
𝐯 = PVector{CartesianCS}(a, b, c)
𝐰 = PVector{CartesianCS}(e, f, g)
𝐓 = 𝐯 × 𝐰
@test 𝐓.x == b * g - c * f && +𝐓.y == -a * g + c * e && 𝐓.z == a * f - b * e

