#=
Author: Jerome Guterl (guterlj@fusion.gat.com)
 Company: General Atomics
 symbolics.jl (c) 2024=#

using CoordinatesSystems, Symbolics

function test_symbolic()
@variables r φ z
𝐯 = PVector{CartesianCS}(r * cos(φ), r * sin(φ), z, [r φ z])
    𝐯_ = 𝐯(2.0, π / 4, 3.0)
    𝐯_.x == 2.0 * cos(π / 4) && 𝐯_.y == 2.0 * sin(π / 4) && 𝐯_.z == 3.0
end