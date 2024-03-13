AbstractOperator = Union{typeof(-),RightContraction}
struct GenericOperator{V1,V2,O}
    v1::V1
    v2::V2
end
GenericOperator{O}(v1::V1, v2::V2) where {V1,V2,O} = GenericOperator{V1,V2,O}(v1, v2)
(op::GenericOperator{V1,V2,O})(args...) where {O,V1,V2} = O(op.v1(args...), op.v2(args...))
(op::GenericOperator{V1,Missing,O})(args...) where {V1,O} = O(op.v1(args...))


Base.:-(v1::AbstractComponentOperatorCS{S}) where {S} = ComponentOperator{S,-}(v1, missing)
Base.:+(v1::AbstractComponentOperatorCS{S}) where {S} = ComponentOperator{S,+}(v1, missing)

ComponentOperator{S,O}(v1::AbstractComponentOperatorCS{S}, v2::AbstractComponentOperatorCS{S}) where {S,O} = ComponentOperator{S,O}((GenericOperator{O}(getproperty(v1,fn),getproperty(v2,fn)) for fn in propertynames(v1))...)
ComponentOperator{S,O}(v1::AbstractComponentOperatorCS{S}, v2::Missing) where {S,O} = ComponentOperator{S,O}((GenericOperator{O}(getproperty(v1, fn), missing) for fn in propertynames(v1))...)