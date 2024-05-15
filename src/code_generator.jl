

compute_projection_list = []
Base.:*(s::Symbol, ss::String) = Symbol(string(s) * ss)
Base.:*(ss::String, s::Symbol) = Symbol(ss * string(s))
Base.:*(s::Symbol, ss::Symbol) = Symbol(string(s) * string(ss))
function write_expr(fn, expr; mode="a")
    i = open(fn, mode) do io
        write(io, join(string.(s for s in expr.args), "\n"))
        write(io, "\n")
    end
    @assert i == 1
end


function clean_file!(fn)
    open(fn, "w") do io
        write(io, "")
    end
end

function convert_macro_kwargs(args)
    aargs = []
    aakws = Pair{Any,Any}[]
    for el in args
        if Meta.isexpr(el, :(=))
            push!(aakws, Pair(el.args...))
        else
            push!(aargs, el)
        end
    end
    kwargs = OrderedDict(aakws)
    return aargs, kwargs
end

generate_coordinate_systems && clean_file!(get_coordinate_systems_filename())
const coordinate_systems_dict = Dict()
export get_component_name
function _write_coordinate_systems(expr)
    fn = get_coordinate_systems_filename()
    println("writing coordinate_systems into $fn ....")
    write_expr(fn, expr)
end


macro add_coordinate_type(name)
    !(generate_coordinate_systems) && return
    name_component = name * "Component"
    name_coordinate = name * "Coordinate"
    name_component_field = Symbol(lowercase(string(name)))
    name_coordinate_field = Symbol(lowercase(string(name)))
    ex = quote
        struct $name_component{T} <: Component{T}
            s::Symbol
        end
        struct $name_coordinate{T} <: Coordinate{T}
            s::Symbol
        end
        Component{$(QuoteNode(name_component_field))}() = $name_component{Generic}()
        Coordinate{$(QuoteNode(name_coordinate_field))}() = $name_coordinate{Generic}()
        $name_component(args...) = $name_component{Generic}(args...)
        $name_coordinate(args...) = $name_coordinate{Generic}(args...)
        $name_coordinate{T}() where {T} = $name_coordinate{T}($(QuoteNode(name_coordinate_field)))
        $name_component{T}() where {T} = $name_component{T}($(QuoteNode(name_component_field)))
        (c::$name_component{T})(E::Type) where {T} = $name_component{E}
        (c::$name_coordinate{T})(E::Type) where {T} = $name_coordinate{E}
        export $name_component, $name_coordinate
    end
    _write_coordinate_systems(ex)
    return
end

function add_vectortype(blk, name, kwargs, s::String)
    # push!(blk.args, :(abstract type $(Symbol(s)){E1,E2,E3,S} <: $(Symbol("Abstract" * s)){S} end))
    pp = [:E1, :E2, :E3]
    fields = [(k, p) for ((k, v), p) in zip(kwargs, pp)]
    sfields = [k for ((k, v), p) in zip(kwargs, pp)]
    struct_dic = Dict(
        :constructors => Any[],
        :mutable => false,
        :params => pp,
        :name => name * s,
        :fields => fields,
        :supertype => Expr(:curly, Symbol(s), :E1, :E2, :E3, name)
    )
    push!(blk.args, MacroTools.combinestructdef(struct_dic))
    push!(blk.args, :($(Symbol(s)){$name}($(sfields...)) = $(name * s)($(sfields...))))
    push!(blk.args, :((e::$(name * s))(a, b, c) = compute!(e, a, b, c)))

end




cfields = [1, 2, 3]
function make_scalar_product!(blk)
    f1 = copy(cfields)
    f2 = copy(cfields)

    f_iter = Iterators.product(f1, f2)
    i_iter = Iterators.product(eachindex(f1), eachindex(f2))

    G = Array{Any}(undef, 3, 3)
    dims = [(2, 3), (1, 2)]
    index_field = Dict()
    index_grid = Dict()
    index_args = Dict()
    index_field[1] = [:i, :s]
    index_field[3] = [:i, :j, :s]
    index_field[2] = [:i, :s]
    index_grid[2] = [:i, :j]
    index_grid[1] = [:i]
    index_args[1] = [:(i::Int64)]
    index_args[2] = [:(i::Int64), :(s::Int64)]
    index_args[3] = [:(i::Int64), :(j::Int64), :(s::Int64)]

    GG = [:(UArray{N}), :Missing]
    for (G11, G12, G13, G22, G23, G33) in Iterators.product(GG, GG, GG, GG, GG, GG)
        G[1, 1] = G11
        G[2, 1] = G12
        G[1, 2] = G12
        G[2, 2] = G22
        G[2, 3] = G23
        G[3, 3] = G33
        G[3, 2] = G23
        G[3, 1] = G13
        G[1, 3] = G13
        get_symbol(f1, f2) = (Symbol("v" * string(f1) * string(f2)))
        args = [:(getfield(v1, $(f[1]))[index...] * getfield(v2, $(f[1]))[index...] * getfield(getfield(g, $(f[1])), $(f[2]))[index...]) for (f, i) in zip(f_iter, i_iter) if (G[i...] != :Missing)]
        args2 = [:(getfield($(get_symbol(f[1], f[2])), $(f[1]))[index...] * getfield($(get_symbol(f[2], f[1])), $(f[1]))[index...] * getfield(getfield(g, $(f[1])), $(f[2]))[index...]) for (f, i) in zip(f_iter, i_iter) if (G[i...] != :Missing)]
        if length(args) > 0
            push!(blk.args, :(⋅(v1::ComponentVector{U,U,U,S1}, v2::ComponentVector{U,U,U,S2}, g::BasisChangeTensor{G11,G12,G13,G22,G23,G33,S2,S1}, index::Vararg{Int64,N}) where {N,G11<:$G11,G12<:$G12,G13<:$G13,G22<:$G22,G23<:$G23,G33<:$G33,U<:UArray{N},S1,S2} = $(length(args) > 1 ? Expr(:call, :+, args...) : args[1])))
            push!(blk.args, :(⋅(v11::U, v12::U, v13::U, v21::T, v22::T, v33::T, g::BasisChangeTensor{G11,G12,G13,G22,G23,G33,S2,S1}, index::Vararg{Int64,N}) where {N,G11<:$G11,G12<:$G12,G13<:$G13,G22<:$G22,G23<:$G23,G33<:$G33,U<:UArray{N},T<:UArray{N},S1,S2} = $(length(args2) > 1 ? Expr(:call, :+, args2...) : args2[1])))

        end
        args = [:(getfield(v1, $(f[1])) .* getfield(v2, $(f[1])) .* getfield(getfield(g, $(f[1])), $(f[2]))) for (f, i) in zip(f_iter, i_iter) if (G[i...] != :Missing)]
        args2 = [:(getfield($(get_symbol(f[1], f[2])), $(f[1])) .* getfield($(get_symbol(f[2], f[1])), $(f[1])) .* getfield(getfield(g, $(f[1])), $(f[2]))) for (f, i) in zip(f_iter, i_iter) if (G[i...] != :Missing)]

        if length(args) > 0
            push!(blk.args, :(⋅(v1::ComponentVector{U,U,U,S1}, v2::ComponentVector{U,U,U,S2}, g::BasisChangeTensor{$G1,$G2,$G3,S1,S2}) where {N,G11<:$G11,G12<:$G12,G13<:$G13,G22<:$G22,G23<:$G23,G33<:$G33,U<:UArray{N},S1,S2} = @views $(length(args) > 1 ? Expr(:call, :.+, args...) : args[1])))
            push!(blk.args, :(⋅(v11::U, v12::U, v13::U, v21::T, v22::T, v33::T, g::BasisChangeTensor{$G11,$G12,$G13,$G22,$G23,$G33,S2,S1}) where {N,G11<:$G11,G12<:$G12,G13<:$G13,G22<:$G22,G23<:$G23,G33<:$G33,U<:UArray{N},T<:UArray{N},S1,S2} = @views $(length(args2) > 1 ? Expr(:call, :.+, args2...) : args2[1])))
        end
    end

    GG = [:Float64, :Missing]
    for (G11, G12, G13, G22, G23, G33) in Iterators.product(GG, GG, GG, GG, GG, GG)
        G[1, 1] = G11
        G[2, 1] = G12
        G[1, 2] = G12
        G[2, 2] = G22
        G[2, 3] = G23
        G[3, 3] = G33
        G[3, 2] = G23
        G[3, 1] = G13
        G[1, 3] = G13
        args = [:(getfield(v1, $(f[1])) * getfield(v2, $(f[1])) * getfield(getfield(g, $(f[1])), $(f[2]))) for (f, i) in zip(f_iter, i_iter) if G[i...] != :Missing]
        if length(args) > 0
            push!(blk.args, :(⋅(v1::ComponentVector{T,T,T,S1}, v2::ComponentVector{U,U,U,S2}, g::BasisChangeTensor{G$11,$G12,$G13,$G22,$G23,$G33,S2,S1}) where {G11<:$G11,G12<:$G12,G13<:$G13,G22<:$G22,G23<:$G23,G33<:$G33,U<:Real,T<:Real,S1,S2} = $(length(args) > 1 ? Expr(:call, :+, args...) : args[1])))
        end
    end
end




macro add_coordinates_system(args...)
    !(generate_coordinate_systems) && return
    aargs, kwargs = convert_macro_kwargs(args)
    basename = string(aargs[1])
    name = aargs[1] * :CS
    fields = [(k, v * "Component") for (k, v) in kwargs]
    fieldtypes = [:($(v * "Component")()) for (k, v) in kwargs]
    blk = Expr(:block)
    # coordinate system
    struct_dic_cs = Dict(
        :constructors => Any[],
        :mutable => false,
        :params => Any[],
        :name => name,
        :fields => fields,
        :supertype => :CoordinatesSystem
    )

    push!(blk.args, MacroTools.combinestructdef(struct_dic_cs))
    push!(blk.args, :(export $name))
    push!(blk.args, :($name() = $name((T() for T in fieldtypes($name))...)))
    push!(blk.args, :(sdoc(::Type{$name}) = $(lowercase(basename))))
    push!(blk.args, :(sdoc(::$name) = $(lowercase(basename))))
    for (i, ft) in enumerate([v * "Component" for (k, v) in kwargs])
        push!(blk.args, :((c::$ft)(v::AbstractCSVector{$name}) = getfield(v, $i)))
    end

    for (i, fc) in enumerate([v * "Coordinate" for (k, v) in kwargs])
        push!(blk.args, :((c::$fc)(v::AbstractCSVector{$name}) = getfield(v, $i)))
    end

    # vector

    add_vectortype(blk, name, kwargs, "PVector")
    # add_vectortype(blk, name, kwargs, "PVectors")
    add_vectortype(blk, name, kwargs, "PhysicsCoordinates")
    # add_vectortype(blk, name, kwargs, "NormalizationMetric")
    add_vectortype(blk, name, kwargs, "BasisVector")
    add_vectortype(blk, name, kwargs, "UnitBasisVector")
    # add_vectortype(blk, name, kwargs, "RightContraction")
    add_vectortype(blk, name, kwargs, "BasisVectors")
    add_vectortype(blk, name, kwargs, "UnitBasisVectors")
    # add_vectortype(blk, name, kwargs, "DyadicTensor")
    # add_vectortype(blk, name, kwargs, "DyadicTensorComponent")
    add_vectortype(blk, name, kwargs, "BasisChangeComponent")
    add_vectortype(blk, name, kwargs, "MetricTensorComponent")
    add_vectortype(blk, name, kwargs, "TensorComponent")
    add_vectortype(blk, name, kwargs, "PTensorComponent")
    add_vectortype(blk, name, kwargs, "MetricTensor")
    add_vectortype(blk, name, kwargs, "Tensor")
    add_vectortype(blk, name, kwargs, "PTensor")
    add_vectortype(blk, name, kwargs, "DiagonalTensor")
    add_vectortype(blk, name, kwargs, "PDiagonalTensor")


    # # generic operator
    # pp = [:C1, :C2, :C3]
    # fields = [(k, p) for ((k, v), p) in zip(kwargs, pp)]
    # push!(pp,:O)
    # struct_dic = Dict(
    #     :constructors => Any[],
    #     :mutable => false,
    #     :params => pp,
    #     :name => name * "ComponentOperator",
    #     :fields => fields,
    #     :supertype => Expr(:curly, ComponentOperator, :C1, :C2, :C3, :O,name)
    # )
    # push!(blk.args, MacroTools.combinestructdef(struct_dic))
    # push!(blk.args, :(ComponentOperator{$name,O}(v1::V1, v2::V2, v3::V3) where {O,V1,V2,V3} = $(name * "ComponentOperator"){O}(v1, v2, v3)))
    # push!(blk.args, :($(name * "ComponentOperator"){O}(v1::V1, v2::V2, v3::V3) where {O,V1,V2,V3} = $(name * "ComponentOperator"){V1,V2,V3,O}(v1, v2, v3)))
    # normalization metric 


    #------ write ---- #
    coordinate_systems_dict[name] = struct_dic_cs
    _write_coordinate_systems(blk)
end


macro add_basis_change_tensor()
    !(generate_coordinate_systems) && return
    cs = collect(keys(coordinate_systems_dict))
    blk = Expr(:block)
    for (cs1, cs2) in Iterators.product(cs, cs)
        push!(blk.args, make_change_basis_tensor(coordinate_systems_dict[cs1], coordinate_systems_dict[cs2]))
    end
    _write_coordinate_systems(blk)
end

# macro add_pvector()
#     !(generate_coordinate_systems) && return
#     cs = collect(keys(coordinate_systems_dict))
#     blk = Expr(:block)
#     for (cs1, cs2) in Iterators.product(cs, cs)
#         push!(blk.args, make_pvector(coordinate_systems_dict[cs1], coordinate_systems_dict[cs2]))
#     end
#     _write_coordinate_systems(blk)
# end

# macro add_ptensor()
#     !(generate_coordinate_systems) && return
#     cs = collect(keys(coordinate_systems_dict))
#     blk = Expr(:block)
#     for cs1 in cs
#         push!(blk.args, make_ptensor(coordinate_systems_dict[cs1]))
#     end
#     _write_coordinate_systems(blk)
# end



macro add_scalar_product()
    !(generate_coordinate_systems) && return
    blk = Expr(:block)
    make_scalar_product!(blk)
    _write_coordinate_systems(blk)
end

# macro add_compute_projection()
#     !(generate_coordinate_systems) && return
#     cs = collect(keys(coordinate_systems_dict))
#     blk = Expr(:block)
#     make_compute_projection!(blk)

#     _write_coordinate_systems(blk)
# end

# function make_change_basis_tensor(cs1,cs2)

#     pp = [:G11, :G12, :G13, :G22, :G23, :G33]
#     pt = [:($(cs1[:name] * "BasisChangeComponent"){G11,G12,G13}),
#         :($(cs1[:name] * "BasisChangeComponent"){G12,G22,G23}),
#         :($(cs1[:name] * "BasisChangeComponent"){G13,G23,G33})]
#     fields = [(f[1],p) for (f,p) in zip(cs2[:fields],pt)]


#     #push!(pp, cs1[:name])
#     struct_dic = Dict(
#         :constructors => Any[],
#         :mutable => false,
#         :name => cs1[:name] * "2" * cs2[:name] * "BasisChangeTensor",
#         :params => pp,
#         :fields => fields,
#         :supertype => Expr(:curly, :BasisChangeTensor, :G11, :G12, :G13, :G22, :G23, :G33, cs1[:name], cs2[:name])
#     )
#     blk = Expr(:block)
#     push!(blk.args,MacroTools.combinestructdef(struct_dic) )
#     push!(blk.args, :(BasisChangeTensor{$(cs1[:name]),$(cs2[:name])}(args...; kw...) = $(cs1[:name] * "2" * cs2[:name] * "BasisChangeTensor")(args...; kw...)))
#    return blk

# end


function make_change_basis_tensor(cs1, cs2)

    pp = [:G1, :G2, :G3]
    pt = [:($(cs1[:name] * "BasisChangeComponent")),
        :($(cs1[:name] * "BasisChangeComponent")),
        :($(cs1[:name] * "BasisChangeComponent"))]
    fields = [(f[1], p) for (f, p) in zip(cs2[:fields], pp)]
    pp_ = [:($p <: $t) for (p, t) in zip(pp, pt)]

    #push!(pp, cs1[:name])
    struct_dic = Dict(
        :constructors => Any[],
        :mutable => false,
        :name => cs1[:name] * "2" * cs2[:name] * "BasisChangeTensor",
        :params => pp_,
        :fields => fields,
        :supertype => Expr(:curly, :BasisChangeTensor, :G1, :G2, :G3, cs1[:name], cs2[:name])
    )
    blk = Expr(:block)
    push!(blk.args, MacroTools.combinestructdef(struct_dic))
    push!(blk.args, :(BasisChangeTensor{$(cs1[:name]),$(cs2[:name])}(g1, g2, g3) = $(cs1[:name] * "2" * cs2[:name] * "BasisChangeTensor")(g1, g2, g3)))
    return blk

end

# function make_pvector(cs1, cs2)
#     blk = Expr(:block)
#     f1 = [f[1] for f in cs1[:fields]]
#     f2 = [f[1] for f in cs2[:fields]]

#     if cs1[:name] == cs2[:name]
#         struct_dic = Dict(
#             :constructors => Any[],
#             :mutable => false,
#             :name => cs1[:name] * "PVector",
#             :params => [:V1, :V2, :V3, :N],
#             :fields => [(f[1], p) for (f, p) in zip(cs1[:fields], [:V1, :V2, :V3])],
#             :supertype => Expr(:curly, :PVector, :V1, :V2, :V3, :V1, :V2, :V3, :N, cs1[:name], cs2[:name])
#         )

#         push!(blk.args, MacroTools.combinestructdef(struct_dic))
#         push!(blk.args, :(PVector{$(cs1[:name]),N}(v1::V1, v2::V2, v3::V3) where {N,V1,V2,V3} = $(cs1[:name] * "PVector"){V1,V2,V3,N}(v1, v2, v3)))
#         push!(blk.args, :(PVector{$(cs1[:name]),$(cs1[:name]),N}(v1::V1, v2::V2, v3::V3) where {N,V1,V2,V3} = $(cs1[:name] * "PVector"){V1,V2,V3,N}(v1, v2, v3)))

#     else
#         f1 = cs1[:fields]
#         f1_ = [f[1] for f in f1]
#         f2 = [(f[1] ∈ f1_ ? "_" * f[1] : f[1], f[2]) for f in cs2[:fields]]

#         fp = vcat([(f[1], p) for (f, p) in zip(f1, [:V1, :V2, :V3])], [(f[1], p) for (f, p) in zip(f2, [:P1, :P2, :P3])])
#         struct_dic = Dict(
#             :constructors => Any[],
#             :mutable => false,
#             :name => cs1[:name] * "_" * cs2[:name] * "PVector",
#             :params => [:V1, :V2, :V3, :P1, :P2, :P3, :N],
#             :fields => fp,
#             :supertype => Expr(:curly, :PVector, :V1, :V2, :V3, :P1, :P2, :P3, :N, cs1[:name], cs2[:name])
#         )

#         push!(blk.args, MacroTools.combinestructdef(struct_dic))
#         push!(blk.args, :(PVector{$(cs1[:name]),$(cs2[:name]),N}(v1::V1, v2::V2, v3::V3, p1::P1, p2::P2, p3::P3; kw...) where {N,V1,V2,V3,P1,P2,P3} = $(cs1[:name] * "_" * cs2[:name] * "PVector"){V1,V2,V3,P1,P2,P3,N}(v1, v2, v3, p1, p2, p3)))
#     end
#     return blk

# end


function make_ptensor(cs1)
    blk = Expr(:block)
    C = :(Union{Missing,$(cs1[:name] * "PTensorComponent")})

    struct_dic = Dict(
        :constructors => Any[],
        :mutable => false,
        :name => cs1[:name] * "PTensorComponent",
        :params => [:(V1), :(V2), :(V3), :N],
        :fields => [(f[1], p) for (f, p) in zip(cs1[:fields], [:V1, :V2, :V3])],
        :supertype => Expr(:curly, :PTensorComponent, :V1, :V2, :V3, :N, cs1[:name])
    )
    push!(blk.args, :(PTensorComponent{$(cs1[:name]),N}(v1::V1, v2::V2, v3::V3) where {N,V1,V2,V3} = $(cs1[:name] * "PTensorComponent"){V1,V2,V3,N}(v1, v2, v3)))

    push!(blk.args, MacroTools.combinestructdef(struct_dic))

    struct_dic = Dict(
        :constructors => Any[],
        :mutable => false,
        :name => cs1[:name] * "PTensor",
        :params => [:(V1 <: $C), :(V2 <: $C), :(V3 <: $C), :N],
        :fields => [(f[1], p) for (f, p) in zip(cs1[:fields], [:V1, :V2, :V3])],
        :supertype => Expr(:curly, :PTensor, :V1, :V2, :V3, :N, cs1[:name])
    )

    push!(blk.args, MacroTools.combinestructdef(struct_dic))
    push!(blk.args, :(PTensor{$(cs1[:name]),N}(v1::V1, v2::V2, v3::V3) where {N,V1,V2,V3} = $(cs1[:name] * "PTensor"){V1,V2,V3,N}(v1, v2, v3)))
    for f in cs1[:fields]
        push!(blk.args, :((t::$(cs1[:name] * "PTensor"))(c::$(f[2])) = t.$(f[1])))
    end
    return blk

end

# function make_scalar_product(blk)
#     f1 = [f[1] for f in cs1[:fields]]
#     f2 = [f[1] for f in cs2[:fields]]

#     f_iter = Iterators.product(f1,f2)
#     i_iter = Iterators.product(eachindex(f1),eachindex(f2))

#     G = Array{Any}(undef,3,3)
#     dims = [(2,3),(1,2)]
#     index_field = Dict()
#     index_grid  = Dict()
#     index_args = Dict()
#     index_field[1] = [:i,:s]
#     index_field[3] = [:i,:j,:s]
#     index_field[2] = [:i, :s]
#     index_grid[2] = [:i, :j]
#     index_grid[1] = [:i]
#     index_args[1] =[ :(i::Int64)]
#     index_args[2] =[:(i::Int64), :(s::Int64)]
#     index_args[3] = [:(i::Int64), :(j::Int64), :(s::Int64)]
#     S2 = cs2[:name]
#     S1 = cs1[:name]
#     for (d_grid, d_field) in dims
#         GG = [:(UArray{$d_grid}),:Missing] 
#         for (G11,G12,G13,G22,G23,G33) in Iterators.product(GG,GG,GG,GG,GG,GG)
#             G[1,1] = G11
#             G[2,1] = G12
#             G[1,2] = G12
#             G[2,2] = G22
#             G[2,3] = G23
#             G[3,3] = G33
#             G[3,2] = G23
#             G[3,1] = G13
#             G[1,3] = G13

#         if S1 == S2
#          args =[:($(Expr(:ref,:(v1.$(f[1])),index_field[d_field]...)) *  $(Expr(:ref,:(v2.$(f[2])),index_field[d_field]...))) for (f,i) in zip(f_iter,i_iter) if (G[i...] != :Missing && f[1] == f[2])]
#                 if length(args) > 0
#                     push!(blk.args, :(⋅(v1::ComponentVector{T,T,T,S1}, v2::ComponentVector{U,U,U,S2}, g::BasisChangeTensor{$G11,$G12,$G13,$G22,$G23,$G33,$S2,$S1}, $(index_args[d_field]...)) where {U,T<:UArray{$d_field}} = $(length(args) > 1 ? Expr(:call, :+, args...) : args[1])))

#                 end
#         else   
#         args =[:($(Expr(:ref,:(v1.$(f[1])),index_field[d_field]...)) *  $(Expr(:ref,:(v2.$(f[2])),index_field[d_field]...)) * $(Expr(:ref,:(g.$(f[1]).$(f[2])),index_grid[d_grid]...))) for (f,i) in zip(f_iter,i_iter) if G[i...] != :Missing]

#           if length(args) > 0
#             push!(blk.args,:(⋅(v1::ComponentVector{T,T,T,$S1}, v2::ComponentVector{T,T,T,$S2}, g::BasisChangeTensor{$G11,$G12,$G13,$G22,$G23,$G33,$S2,$S1},$(index_args[d_field]...)) where {T<:UArray{$d_field}} = $(length(args) > 1 ? Expr(:call, :+, args...) : args[1])))
#             push!(blk.args, :(⋅(v2::ComponentVector{T,T,T,$S2}, v1::ComponentVector{T,T,T,$S1}, g::BasisChangeTensor{$G11,$G12,$G13,$G22,$G23,$G33,$S2,$S1}, $(index_args[d_field]...)) where {T<:UArray{$d_field}} = $(length(args) > 1 ? Expr(:call, :+, args...) : args[1])))
#         end
#     end
#         end
#     end
#     GG = [:Float64,:Missing] 
#         for (G11,G12,G13,G22,G23,G33) in Iterators.product(GG,GG,GG,GG,GG,GG)
#             G[1,1] = G11
#             G[2,1] = G12
#             G[1,2] = G12
#             G[2,2] = G22
#             G[2,3] = G23
#             G[3,3] = G33
#             G[3,2] = G23
#             G[3,1] = G13
#             G[1,3] = G13
#     args =[:(v1.$(f[1]) * v2.$(f[2]) * g.$(f[1]).$(f[2])) for (f,i) in zip(f_iter,i_iter) if G[i...] != :Missing]
#     if length(args) > 0
#         push!(blk.args, :(⋅(v1::ComponentVector{T,T,T,$S1}, v2::ComponentVector{U,U,U,$S2}, g::BasisChangeTensor{$G11,$G12,$G13,$G22,$G23,$G33,$S2,$S1}) where {U,T<:Real} = $(length(args) > 1 ? Expr(:call, :+, args...) : args[1])))
#         if S1 != S2
#             push!(blk.args, :(⋅(v2::ComponentVector{U,U,U,$S2}, v1::ComponentVector{T,T,T,$S1}, g::BasisChangeTensor{$G11,$G12,$G13,$G22,$G23,$G33,$S2,$S1}) where {U,T<:Real} = $(length(args) > 1 ? Expr(:call, :+, args...) : args[1])))
#         end
#     end
# end

#     if S1 == S2
#         args =[:(v1.$(f) * (v2.$(f))) for (f) in f1]
#         push!(blk.args,:(⋅(v1::ComponentVector{T,T,T,$S1}, v2::ComponentVector{U,U,U,$S2}) where {U,T} = $(length(args) > 1 ? Expr(:call, :+, args...) : args[1])))
#     end

# end




function make_compute_projection!(blk)

    f1 = copy(cfields)
    f_iter = f1
    i_iter = eachindex(f1)

    G = Array{Any}(undef, 3)
    GG = [:(UArray{N}), :Missing]
    for (G1, G2, G3) in Iterators.product(GG, GG, GG)
        G[1] = G1
        G[2] = G2
        G[3] = G3

        args = [:(v.$(f)[index...] * g.$(f)[index...]) for (f, i) in zip(f_iter, i_iter) if G[i...] != :Missing]

        if length(args) > 0
            push!(blk.args, :(compute_projection(v::ComponentVector{T,T,T,S2}, g::BasisChangeComponent{G1,G2,G3,S2}, index::Vararg{Int64,N}) where {N,T<:UArray{N},S1,S2,G1<:$G1,G2<:$G2,G3<:$G3} = $(length(args) > 1 ? Expr(:call, :+, args...) : args[1])))
        end
        args = [:(v.$(f) * g.$(f)) for (f, i) in zip(f_iter, i_iter) if G[i...] != :Missing]

        if length(args) > 0
            push!(blk.args, :(compute_projection(v::ComponentVector{T,T,T,S2}, g::BasisChangeComponent{G1,G2,G3,S2}) where {N,T<:UArray{N},S1,S2,G1<:$G1,G2<:$G2,G3<:$G3} = @views @. $(length(args) > 1 ? Expr(:call, :+, args...) : args[1])))
        end
    end
    GG = [Float64, :Missing]
    for (G1, G2, G3) in Iterators.product(GG, GG, GG)
        G[1] = G1
        G[2] = G2
        G[3] = G3

        args = [:(v.$(f)[index...] * g.$(f)[index...]) for (f, i) in zip(f_iter, i_iter) if G[i...] != :Missing]

        if length(args) > 0
            push!(blk.args, :(compute_projection(v::ComponentVector{T,T,T,S2}, g::BasisChangeComponent{G1,G2,G3,S2}) where {N,T<:Float64,S1,S2,G1<:$G1,G2<:$G2,G3<:$G3} = $(length(args) > 1 ? Expr(:call, :+, args...) : args[1])))
        end

    end
end






# function make_compute_projection(cs1, cs2)
#     S2 = cs2[:name]
#     S1 = cs1[:name]
#     blk = Expr(:block)
#     S1 == S2 && return blk
#     f1 = [f[1] for f in cs1[:fields]]
#     f_iter = f1
#     i_iter = eachindex(f1)

#     G = Array{Any}(undef, 3)
#     dims = [(2, 3), (1, 2)]
#     index_field = Dict()
#     index_grid = Dict()
#     index_args = Dict()
#     index_field[1] = [:i, :s]
#     index_field[3] = [:i, :j, :s]
#     index_field[2] = [:i, :s]
#     index_grid[2] = [:i, :j]
#     index_grid[1] = [:i]
#     index_args[1] = [:(i::Int64)]
#     index_args[2] = [:(i::Int64), :(s::Int64)]
#     index_args[3] = [:(i::Int64), :(j::Int64), :(s::Int64)]
#     components_S2 = [f[2] for f in cs2[:fields]]
#     for component in components_S2
#         if (component, S1) ∉ compute_projection_list
#             for (d_grid, d_field) in dims
#                 GG = [:(UArray{$d_grid}), :Missing]
#                 for (G1, G2, G3) in Iterators.product(GG, GG, GG)
#                     G[1] = G1
#                     G[2] = G2
#                     G[3] = G3

#                     args = [:($(Expr(:ref, :(v.$(f)), index_field[d_field]...)) * $(Expr(:ref, :(g.$(f)), index_grid[d_grid]...))) for (f, i) in zip(f_iter, i_iter) if G[i...] != :Missing]

#                     if length(args) > 0
#                         push!(blk.args, :(compute_projection(c::$component, v::PVector{T,T,T,$S1}, g::BasisChangeComponent{$G1,$G2,$G3,$S1}, $(index_args[d_field]...)) where {T<:UArray{$d_field}} = $(length(args) > 1 ? Expr(:call, :+, args...) : args[1])))
#                     end
#                 end
#             end
#             push!(compute_projection_list, (component, S1))
#         end
#     end
#     return blk

# end