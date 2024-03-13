struct MethodDivergence{O<:GridType} end
MethodDivergence(::Grid{O}) where {O} = MethodDivergence{O}()

get_method_div(method) = MethodDivergence
@compute_struct struct ComputeDivergence{E<:Equation,G<:SGrid,I<:SIterator,M<:MethodDivergence} <: AbstractCompute
    Γtot::G
    σ::S
    iter::I
    config::ComputeConfig
end
#ComputesDivergence = VectorComputes{ComputeDivergence}
#ComputeDivergence(eq::Equation, grid::SGrid, iter; method=MethodDivergence(grid)) = ComputeDivergence(eq, tot_flux, grid, iter, method)
sdoc(c::ComputeDivergence{E,G,I,MethodDivergence{O}}) where {O,E,G,I} = "compute divergence for $(name(c.eq)) [$(prettytype(O))] with $(c.iter)"

#compute!(cd::ComputeDivergence{O,E,T,G,I}; kw...) where {O<:MethodDivergence{Ortho},E,T,G,I} = compute_div_ortho!(cd.eq.trsp, cd.eq.tot_flux.n.x, cd.tot_flux.e.y, cd.grid.σ.n.x, cd.grid.σ.e.y, cd.grid.σ.s.x, cd.grid.σ.w.y, cd.iter)::Nothing

(cd::ComputeDivergence{E,G,I,O})() where {O<:MethodDivergence{Ortho},E,G,I} = compute!(cd, args...)
@compute_func compute!(cd::ComputeDivergence, args...) = compute_div_ortho!(cd.eq, cd.eq.flux.tot, cd.grid, cd.iter, args...)
compute_div_ortho!(eq, tot_flux, grid, iter, args...) = compute_div_ortho!(eq.trsp, tot_flux.n.x, tot_flux.e.y, grid.σ.n.x, grid.σ.e.y, grid.σ.s.x, grid.σ.w.y, iter, args...)

Base.@kwdef mutable struct ComputeDivergenceConfig <: ComputeConfig{ComputeDivergence} b                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          
    eq::Union{Symbol,Missing} = missing
    active::Bool = true
end

function set_compute!(@nospecialize(data::DataSet), @nospecialize(cs::AbstractComputesSetBuilder), @nospecialize(grid::SGrid), config::ComputeConfig{ComputeDivergence};
    #equations=:all,
    kw...)
    eq = get_equation(data, config.eq)
    method = get_method_div(config.method)
    c = ComputeDivergence(eq, grid, eq.iters.C, method(grid), config)
    cs.log.setup("set $(sdoc(c))")
    add_compute!(cs.div, c)
end

∫∂σ(Γtot::TotalFlux{P,T}, σ::WeightedSurfaceNormals1D{U}, args...) = (Γtot.s ⋅ σ.s + Γtot.n ⋅ σ.n)(args...) where {T<:UArray,U<:UArray}
∫∂σ(Γtot, σ, args...) = (Γtot.s ⋅ σ.s + Γtot.n ⋅ σ.n + Γtot.w ⋅ σ.w + Γtot.e ⋅ σ.e)(args...)
@kernel_iter function compute_div_ortho!(div::T, Γnx::T, Γey::T, σnx::U, σey::U, σsx::U, σwy::U, i::Int64, j::Int64, s::Int64) where {T<:Array,U<:Array}
    @views div[i, j, s] = (Γnx[i, j, s] * σnx[i, j] + Γnx[i-1, j, s] * σsx[i, j] + Γey[i, j, s] * σey[i, j] + Γey[i, j-1, s] * σwy[i, j])
    nothing
end
# ---- 1D ----
@kernel_iter function compute_div_ortho!(div::ParticleDivergence{T}, Γnx::TotalFlux{P,T}, Γey::T, σnx::U, σey::U, σsx::U, σwy::U, i::Int64, s::Int64) where {T<:Array,U<:Array}
    div[i, s] = (Γn[i, s] * σn[i] + Γnx[i-1, s] * σsx[i])
    nothing
end

@kernel_iter function compute_div_ortho!(div::ParticleDivergence{T}, Γ::TotalFlux{P,T}, σ::WeightedSurfaceNormals{U}, indexes::Vararg{Int64,N}) where {T<:Array,U<:Array}
    div[indexes] = ∫∂σ(Γtot, σ, indexes)
    nothing
end

