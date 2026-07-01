This repository has been archived and is no longer maintained.
The code is provided for historical reference and may contain unpatched or unknown vulnerabilities.
It should not be used in production systems.

# CoordinatesSystems

[![CI](https://github.com/ProjectTorreyPines/CoordinatesSystems.jl/actions/workflows/CI.yml/badge.svg?branch=master)](https://github.com/ProjectTorreyPines/CoordinatesSystems.jl/actions/workflows/CI.yml)

This package provides support to do vectorial computations. 
The first usage is the derivation of metric tensor and associated operators. 
```julia
using CoordinatesSystems, Symbolics
𝐞̂ = UnitBasisVectors(CartesianCS)
@variables r Ψ θ
𝐑 = r * cos(Ψ) * sin(θ) * 𝐞̂.x + r * sin(Ψ) * sin(θ) * 𝐞̂.y + r * cos(θ) * 𝐞̂.z
𝐮 = BasisVectors{SphericalCS}(𝐑, [r, θ, Ψ])
g̅̅ = MetricTensor(𝐮)
r_ = 3.0
θ_ = π / 3
g = g̅̅(r_, θ_, 8.0)
g.r.r == 1.0 && g.θ.θ == r_^2 && g.Ψ.Ψ == r_^2 * sin(θ_)^2
```

```julia
using CoordinatesSystems, Symbolics
@variables r φ z
𝐞 = BasisVectors{CylindricalCS}(r * cos(φ), r * sin(φ),z, [r, φ, z])
𝐯 = PVector{CylindricalCS}(r^3, 0,0)
g̅̅ = MetricTensor(𝐞)
∇ = Divergence(g̅̅)
d = ∇ ⋅ 𝐯

r_ = abs(rand()) +0.0001
isapprox(d(r_, 2.0, 3.0),4 * r_^2, atol=1e-14)
```
The second usage is to perform vectorial calculations on mesh structures. 
```julia
using CoordinatesSystems, Symbolics
nx = 100
ny = 90
arr_gen = ArrayGenerator(nx, ny)
a = 1.0
b = 2.0
𝐮 = PVector{CartesianCS}(arr_gen; fill=a)
𝐯 = PVector{CartesianCS}(arr_gen; fill=b)
M = 𝐮 ⋅ 𝐯
all(M .== 3 * a * b)

A = rand(nx, ny)
B = rand(nx, ny)
C = rand(nx, ny)
𝐮 = PVector{CartesianCS}(A, B, C)
all(norm(𝐮) .== sqrt.(A .^ 2 .+ B .^ 2 .+ C .^ 2))
```

