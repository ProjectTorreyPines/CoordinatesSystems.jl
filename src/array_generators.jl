
# --- Array Generator ----
struct GridDimension{D} end
_0D = GridDimension{0}
_2D = GridDimension{2}
_1D = GridDimension{1}
_3D = GridDimension{3}
export GridDimension, _1D, _2D, _3D, _0D
Base.show(io::IO, ::MIME"text/plain", ::Type{GridDimension{0}}) = print(io, "0D")
Base.show(io::IO, ::MIME"text/plain", ::Type{GridDimension{1}}) = print(io, "1D")
Base.show(io::IO, ::MIME"text/plain", ::Type{GridDimension{2}}) = print(io, "2D")
Base.show(io::IO, ::MIME"text/plain", ::Type{GridDimension{3}}) = print(io, "3D")
Base.show(io::IO, ::Type{GridDimension{0}}) = print(io, "0D")
Base.show(io::IO, ::Type{GridDimension{1}}) = print(io, "1D")
Base.show(io::IO, ::Type{GridDimension{2}}) = print(io, "2D")
Base.show(io::IO, ::Type{GridDimension{3}}) = print(io, "3D")

GridDimension(dim::Int64) = GridDimension{dim}
GridDimension(dim::Type{<:GridDimension}) = dim
Base.isless(::Type{GridDimension{D}}, i::Int64) where D = Base.isless(D,i) 

abstract type AbstractArrayGenerator{B,T,D,DIM<:GridDimension} end
abstract type Backend end 
struct CPUBackend <: Backend end 


CPUBackend(x) = x 
struct ArrayGenerator{B<:Backend,T,D,DIM<:GridDimension} <: AbstractArrayGenerator{B,T,D,DIM}
    dims::D
    backend::B
end

struct PrefilledArrayGenerator{B<:Backend,T,D,DIM<:GridDimension} <: AbstractArrayGenerator{B,T,D,DIM}
    value::T
end

ArrayGenerator{B,T,D}(dims::Tuple; dim::Type{<:GridDimension}=GridDimension(length(dims))) where {B,T,D<:Tuple} = ArrayGenerator{B,T,D,dim}(dims::Tuple, B())
ArrayGenerator{B,T}(dims::D; kw...) where {N,B,T,D<:NTuple{N,Int64}} = ArrayGenerator{B,T,D}(dims; kw...)
ArrayGenerator{B,T}(args::Vararg{Int64,N}; kw...) where {N,B,T} = ArrayGenerator{B,T,D}(tuple(args...); kw...)

ArrayGenerator{B}(args::Vararg{Int64,N}; T=Float64,kw...) where {N,B} = ArrayGenerator{B,T}(tuple(args...); kw...)
ArrayGenerator{B}(args::NTuple{N,Int64}; T=Float64, kw...) where {N,B} = ArrayGenerator{B,T}(args; kw...)
ArrayGenerator(args::Vararg{Int64,N}; backend::Backend=CPUBackend(), kw...) where {N} = ArrayGenerator{typeof(backend)}(tuple(args...); kw...)
ArrayGenerator(args::NTuple{N,Int64}; backend::Backend=CPUBackend(), kw...) where {N} = ArrayGenerator{typeof(backend)}(args; kw...)
PrefilledArrayGenerator(v::T; backend=CPUBackend(), dim=GridDimension(length(size(v)))) where {T<:Array} = PrefilledArrayGenerator{typeof(backend),T,length(size(v)),dim}(v)
PrefilledArrayGenerator(v::T; backend=CPUBackend()) where {T<:Real} = PrefilledArrayGenerator{typeof(backend),T,0,_0D}(v)
(arr_gen::PrefilledArrayGenerator{B,T,D,DIM})(; kw...) where {T,D,B<:Backend,DIM} = B(arr_gen.value)
    
function (arr_gen::ArrayGenerator{B,T,D,DIM})(; fill=0.0, extra_dim=0, type=missing) where {T,D,B<:Backend,DIM}
    if type isa Missing
        type = T
    end
    if fill isa Missing
        fill = 0.0 
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