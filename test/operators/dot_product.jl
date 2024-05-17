#=
Author: Jerome Guterl (guterlj@fusion.gat.com)
 Company: General Atomics
 dot_product.jl (c) 2024=#


    a, b, c, e, f, g = rand(6)
    𝐯 = PVector{CartesianCS}(a, b, c)
    𝐰 = PVector{CartesianCS}(e, f, g)
    T = 𝐯 ⋅ 𝐰
@test T == a*e + b*f + c* g



    a, b, c, e, f, g, h, i,j,k,l,m = rand(12)
    𝐯 = PVector{CartesianCS}(a, b, c)
    𝐰 = PTensor{CartesianCS}(e, f, g, h,i,j ,k ,l,m)
    𝐓 = 𝐰⋅𝐯  
@test 𝐓.x == a * e + b * f + c * g && 𝐓.y == a * h + b * i + c * j && 𝐓.z == a * k + b * l + c * m
