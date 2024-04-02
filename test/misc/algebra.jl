

Expr(:ccall,+,Expr())
for i in fieldnames(T) * fieldnames(T) 
    (Γ.n + σ.n)(i,j) + Γ.s ⋅ σ.s)(iter)
(Γ.n ⋅ σ.n)[i,j] = σ.∥[i,j] * σ.θ[i,j] * σ._g.∥θ[i,j]  
:(a.b)

compute(i,j)

struct FluxVector
@generated ∑(Γ,SurfaceNormals)
    Symbol(t)
end

struct A 
    a 
end

struct B 
    b
end

b = B([1])
a= A([1])
Base.:+(a::A,b::B) = 
(A+B)[i,j]
# https://discourse.julialang.org/t/can-i-use-parallel-or-perp-in-variables-names/58120/7
⋅(Γ.n, σ.n, g::MetricTensor,i::Int64,j::Int64) = A.ǁ[i,j,s] * B.θ[i,j] * A._g.∥θ[i,j]  + B.⊥[i,j,s] * σ.θ[i,j] * σ._g.∥θ[i,j]
⋅(Γ.n, σ.n, g::MetricTensor,i::Int64,j::Int64) = A.ǁ[i,j,s] * B.θ[i,j] * A._g.∥θ[i,j]  + B.⊥[i,j,s] * σ.θ[i,j] * σ._g.∥θ[i,j]

×(a::A,b::B,args...) = Operator{×}(a,b)


struct _Expr
    type
    operator
    args
end
struct Faces
    n
    s
end

struct GetProperty
    p
end
faces = Faces(1,1)
GetExpr(t,o,args...) = _Expr(t,o,args...)
∑(A,faces) = GetExpr(:call,:+,(GetProperty(A,fn) for fn in fieldnames(faces))...)
struct 
    expr
end 
∑(A×B,faces)
∇⋅Γ
struct FluxSurface
    s

end
Γ = FluxVector()
σ = NormalSurface()


 () = 
macro 
⋅(A, B) = ⋅(A, B,_g)
⋅(A, B,_g) = (A.∥() * B.θ() * _g.∥θ()  + B.⟂() * σ.θ() * _g.⟂θ())
end


getproperty()

function test(t)
    print(gensym(t))
end

@generated function test2(t)

return :($t)
end