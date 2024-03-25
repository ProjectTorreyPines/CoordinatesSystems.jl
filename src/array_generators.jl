
# --- Array Generator ----
abstract type AbstractArrayGenerator{B,T,D,DIM} end
abstract type Backend end 
struct CPUBackend <: Backend end 
CPUBackend(x) = x 
struct ArrayGenerator{B<:Backend,T,D,DIM} <: AbstractArrayGenerator{B,T,D,DIM}
    dims::D
    backend::B
end

struct PrefilledArrayGenerator{B<:Backend,T,D,DIM} <: AbstractArrayGenerator{B,T,D,DIM}
    value::T
end

ArrayGenerator{B,T,D}(dims::Tuple; dim=length(dims)) where {B,T,D<:Tuple} = ArrayGenerator{B,T,D,dim}(dims::Tuple, B())
ArrayGenerator{B,T}(dims::D; kw...) where {N,B,T,D<:NTuple{N,Int64}} = ArrayGenerator{B,T,D}(dims; kw...)
ArrayGenerator{B,T}(args::Vararg{Int64,N}; kw...) where {N,B,T} = ArrayGenerator{B,T,D}(tuple(args...); kw...)

ArrayGenerator{B}(args::Vararg{Int64,N}; T=Float64,kw...) where {N,B} = ArrayGenerator{B,T}(tuple(args...); kw...)
ArrayGenerator{B}(args::NTuple{N,Int64}; T=Float64, kw...) where {N,B} = ArrayGenerator{B,T}(args; kw...)
ArrayGenerator(args::Vararg{Int64,N}; backend::Backend=CPUBackend(), kw...) where {N} = ArrayGenerator{typeof(backend)}(tuple(args...); kw...)
ArrayGenerator(args::NTuple{N,Int64}; backend::Backend=CPUBackend(), kw...) where {N} = ArrayGenerator{typeof(backend)}(args; kw...)
PrefilledArrayGenerator(v::T; backend=CPUBackend()) where {T<:Array,N} = PrefilledArrayGenerator{typeof(backend),T,length(size(v)),length(size(v))}(v)

# ArrayGenerator{B,T}(nx::Int64, ny::Int64, nz::Int64; kw...) where {B,T} = ArrayGenerator{B,T}((nx, ny, nz); kw...)()
# ArrayGenerator{B,T,D}(nx::Int64; kw...) where {B,T,D} = ArrayGenerator{B,T,D}((nx,); kw...)()
# ArrayGenerator{B,T,D}(nx::Int64, ny::Int64; kw...) where {B,T,D} = ArrayGenerator{B,T,D}((nx, ny); kw...)()
# ArrayGenerator{B,T,D}(nx::Int64, ny::Int64, nz::Int64; kw...) where {B,T,D} = ArrayGenerator{B,T,D}((nx, ny, nz); kw...)()
(arr_gen::PrefilledArrayGenerator{B,T,D,DIM})(; kw...) where {T,D,B<:Backend,DIM} = B(arr_gen.value)
    
function (arr_gen::ArrayGenerator{B,T,D,DIM})(; fill=0.0, extra_dim=0, type=missing) where {T,D,B<:Backend,DIM}
    if type isa Missing
        type = T
    end
   
    dims = [d for d in arr_gen.dims]
    if extra_dim > 0
        for i in extra_dim
            push!(dims, 1)
        end
    end
    if length(dims) == 1 && dims[1] == 0
        return B(T(fill))
    else
        if applicable(zero, type)
            arr = zeros(type, dims...)
            fill!(arr, convert(type, fill))
        else
            arr = Array{type}(undef, dims...)
            fill!(arr, type(fill))
        end
        return B(arr)
    end
end