struct A{T}
    i::T
end
N =10000
a = A(rand(N))
a_ = copy(a.i)
b = A(rand(N))
b_ = copy(b.i)
c = A(rand(N))
c_ = copy(c.i)
sum_(v1, v2) = v1, +, v2
@noinline myoperator(v1,v2,b) = b(v1,v2)
Operators = Union{typeof(+),typeof(*)}
Base.:+(v1::T, v2::U) where {O<: Operators, OO<:Operators, W,Z,WW,ZZ, T<:Union{A,Tuple{W,O,Z}}, U<:Union{A,Tuple{WW,OO,ZZ}}} = (v1, +, v2)
Base.:*(v1::T, v2::U) where {O<:Operators,OO<:Operators,W,Z,WW,ZZ,T<:Union{A,Tuple{W,O,Z}},U<:Union{A,Tuple{WW,OO,ZZ}}} = (v1, +, v2)  = (v1, *, v2)

function test!(a, b,c)
    s = 0.0
    for i in eachindex(a.i)
        s = s + (a * b * c * c +a)(i)
    end
    return s
end



function test_default!(a::Array, b,c )
    s = 0.0
    for i in eachindex(a)
        s = s + operation_(a,b,c,i)
    end
    return s
end

function test_default!(a::A, b, c)
    s = 0.0
    for i in eachindex(a.i)
        s = s + operation_(a, b, c, i)
    end
    return s
end
operation_(a::A, b::A, c::A, i) = a.i[i] * b.i[i] * c.i[i] * c.i[i] + a.i[i]
operation_(a::Array, b::Array, c::Array, i) = a[i] * b[i] * c[i] * c[i] + a[i]
operation(a::A, args::Vararg{Int,N}) where N = a.i[args...]
operation(t1::Union{Tuple{T,O,U},A}, b::Operators, t2::Union{Tuple{TT,OO,UU},A}, args::Vararg{Int,N}) where {N,O<:Operators,OO<:Operators, T, U, TT, UU} = b(operation(t1, args...), operation(t2, args...))
operation(t::Tuple{T,O,U}, args::Vararg{Int,N}) where {N,T,U,O<:Operators} = operation(t[1], t[2], t[3], args...)

(t::Tuple{T,OOO,U})(args...) where {O<:Operators,OO<:Operators,OOO<:Operators,W,Z,WW,ZZ,T<:Union{A,Tuple{W,O,Z}},U<:Union{A,Tuple{WW,OO,ZZ}}} = operation(t, args...)
@btime s1 = test!($a,$b,$c)
@btime s1 = test_default!($a, $b,$c)
@btime s1 = test_default!($a_, $b_, $c_)
test_default!(a, b,c) == test!(a, b,c)
