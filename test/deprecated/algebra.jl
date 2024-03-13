struct Density end
struct Mass  end
struct Momemtum  end
struct Pressure  end
struct Temperature  end
struct Velocity end 

struct DiffusionCoeffient{T}
≝()
DiffusionCoefficientTensor = DiffusionCoeffient{Tensor}
DiffusionCoefficientScalar = DiffusionCoeffient{Scalar}
DiffusionCoefficientVector = DiffusionCoeffient{Vector}
struct ComputeDefinition
    out
    operator
    species
    component
end
struct Gradient
    field
end

∇(T) = Gradient(T)
@main_variable n ≝ Density
@species_parameter m = Mass
@main_variable nm𝐯 = Momemtum
@main_variable p = Pressure
@aux_variable T= Temperature
@aux_variable 𝐯 = Velocity
@species(ions) 𝐯 ≝ nmv/m/n
@compute  T ≝ p/n/ee
@compute n(:electron) ≝ ∑(Z*n,:ions)
@compute nodes = faces ∇(n), ∇(T), ∇(v)
@parameter α_conv= VectorParameter
@parameter D = DiffusionCoefficientTensor
@parameter ν = ViscocityTensor
@parameter κ = ThermalDiffusivityTensor

@aux_variable species = impurity component = s∥ Fthe = α_e * ∇(T)
@aux_variable species = impurity component = s Fthi = α_i * ∇(T)
@flux Γdiff = ParticeDiffusionFlux
𝒮 = Sources()
ℛ = Reactions()
Γₙ ≝ n × 𝐯
@compute Γdiff ≝ -D ⋅ ∇(n)
@compute Qdiff ≝ -κ ⋅ ∇(T)
@compute Γndiff ≝ -D ⋅ ∇(n)
Γndiff ≝ -D × ∇(v)
Qconf ≝ α_conv ⊗ nm𝐯 * T  
Γ ≝ Γₙ - Γdiff
Γᵥ ≝ nm𝐯 ⊗ 𝐯
Γₚ ≝ p × 𝐯
𝒮 ≝ Sv + Fthi(impurities,∥) + Fthe(impurities,∥)

@equation species = ions ∂ₜ(n) + ∇ ⋅ (Γₙ+Γdiff) = ℛ + 𝒮
@equation species = ions ∂ₜ(mn𝐯) + ∇ ⋅ (Γᵥ + Π) = ℛ + 𝒮
@equation species = ions ∂ₜ(3/2 × p) + ∇ ⋅ (Qconv + Qdiff + Π⋅𝐯) = ℛ + 𝒮
∑(Γ::T, σ::S,args...) = ⋅(Γ.n, σ.n, args...) + ⋅(Γ.n, σ.n, args...) + ⋅(Γ.n, σ.n, args...) + ⋅(Γ.n, σ.n, args...) 

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

div(Γ::FluxVector,σ::SurfaceNormals) = Γ.n ⋅ σ.n + Γ.s ⋅ σ.s
gradient(::Scalar) = Γ.n ⋅ σ.n + Γ.s ⋅ σ.s
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