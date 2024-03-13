
# --- Array Generator ----
abstract type AbstractArrayGenerator end
abstract type Backend end 
struct CPUBackend <: Backend end 
CPUBackend(x) = x 
struct ArrayGenerator{B<:Backend,T,D<:Tuple} <: AbstractArrayGenerator
    dims::D
end

ArrayGenerator{B,T}(dims::D) where {B,T,D<:Tuple} = ArrayGenerator{B,T,D}(dims)
ArrayGenerator{B,T}(n::Int64; kw...) where {B,T} = ArrayGenerator{B,T}((n,); kw...)
ArrayGenerator(nx::Int64; kw...) = ArrayGenerator{CPUBackend,Float64}((nx,); kw...)
ArrayGenerator(nx::Int64, ny::Int64; kw...) = ArrayGenerator{CPUBackend,Float64}((nx, ny); kw...)
ArrayGenerator(nx::Int64, ny::Int64, nz::Int64; kw...) = ArrayGenerator{CPUBackend,Float64}((nx, ny, nz); kw...)

ArrayGenerator(backend::B, nx::Int64; kw...) where {B<:Backend} = ArrayGenerator{B,Float64}((nx,); kw...)
ArrayGenerator(backend::B, nx::Int64, ny::Int64; kw...) where {B<:Backend} = ArrayGenerator{B,Float64}((nx, ny); kw...)
ArrayGenerator(backend::B, nx::Int64, ny::Int64, nz::Int64; kw...) where {B<:Backend} = ArrayGenerator{B,Float64}((nx, ny, nz); kw...)
ArrayGenerator(backend::B, nx::Int64; kw...) where {B<:Backend} = ArrayGenerator{B,Float64}((nx,); kw...)
ArrayGenerator(backend::B, nx::Int64, ny::Int64; kw...) where {B<:Backend} = ArrayGenerator{B,Float64}((nx, ny); kw...)
#ArrayGenerator(backend::B, nx::Int64, ny::Int64, nz::Int64; kw...) where {B<:Backend} = ArrayGenerator{B,Float64}((nx, ny, nz); kw...)

#ArrayGenerator{B,T}(nx::Int64; kw...) where {B,T} = ArrayGenerator{B,T}((nx,); kw...)()
ArrayGenerator{B,T}(nx::Int64, ny::Int64; kw...) where {B,T} = ArrayGenerator{B,T}((nx, ny); kw...)()
ArrayGenerator{B,T}(nx::Int64, ny::Int64, nz::Int64; kw...) where {B,T} = ArrayGenerator{B,T}((nx, ny, nz); kw...)()
ArrayGenerator{B,T,D}(nx::Int64; kw...) where {B,T,D} = ArrayGenerator{B,T,D}((nx,); kw...)()
ArrayGenerator{B,T,D}(nx::Int64, ny::Int64; kw...) where {B,T,D} = ArrayGenerator{B,T,D}((nx, ny); kw...)()
ArrayGenerator{B,T,D}(nx::Int64, ny::Int64, nz::Int64; kw...) where {B,T,D} = ArrayGenerator{B,T,D}((nx, ny, nz); kw...)()

function (arr_gen::ArrayGenerator{B,T,D})(; fill=0.0, extra_dim=0, type=missing) where {T,D,B<:Backend}
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
            arr = Array{type}(undef, args...)
            fill!(arr, fill)
        end
        return B(arr)
    end
end