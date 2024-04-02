#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:54 =#
struct ParallelComponent{T} <: Component{T}
    #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:55 =#
    s::Symbol
end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:57 =#
struct ParallelCoordinate{T} <: Coordinate{T}
    #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:58 =#
    s::Symbol
end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:61 =#
get_component_name(::ParallelComponent) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:61 =#
        :parallel
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:62 =#
get_component(v::AbstractCSComponentObject, c::ParallelComponent) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:62 =#
        getproperty(v, :parallel)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:63 =#
Component{:parallel}() = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:63 =#
        ParallelComponent{Generic}()
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:64 =#
Coordinate{:parallel}() = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:64 =#
        ParallelCoordinate{Generic}()
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:65 =#
get_coordinate_name(::ParallelCoordinate) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:65 =#
        :parallel
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:66 =#
get_component_name(::Type{<:ParallelComponent}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:66 =#
        :parallel
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:67 =#
get_coordinate_name(::Type{<:ParallelCoordinate}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:67 =#
        :parallel
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:70 =#
ParallelComponent(args...) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:70 =#
        ParallelComponent{Generic}(args...)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:71 =#
ParallelCoordinate(args...) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:71 =#
        ParallelCoordinate{Generic}(args...)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:72 =#
(ParallelCoordinate{T}() where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:72 =#
        ParallelCoordinate{T}(:parallel)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:73 =#
(ParallelComponent{T}() where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:73 =#
        ParallelComponent{T}(:parallel)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:74 =#
((c::ParallelComponent{T})(E::Type) where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:74 =#
        ParallelComponent{E}
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:75 =#
((c::ParallelCoordinate{T})(E::Type) where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:75 =#
        ParallelCoordinate{E}
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:76 =#
export ParallelComponent, ParallelCoordinate
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:54 =#
struct ToroidalComponent{T} <: Component{T}
    #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:55 =#
    s::Symbol
end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:57 =#
struct ToroidalCoordinate{T} <: Coordinate{T}
    #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:58 =#
    s::Symbol
end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:61 =#
get_component_name(::ToroidalComponent) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:61 =#
        :toroidal
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:62 =#
get_component(v::AbstractCSComponentObject, c::ToroidalComponent) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:62 =#
        getproperty(v, :toroidal)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:63 =#
Component{:toroidal}() = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:63 =#
        ToroidalComponent{Generic}()
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:64 =#
Coordinate{:toroidal}() = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:64 =#
        ToroidalCoordinate{Generic}()
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:65 =#
get_coordinate_name(::ToroidalCoordinate) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:65 =#
        :toroidal
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:66 =#
get_component_name(::Type{<:ToroidalComponent}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:66 =#
        :toroidal
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:67 =#
get_coordinate_name(::Type{<:ToroidalCoordinate}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:67 =#
        :toroidal
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:70 =#
ToroidalComponent(args...) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:70 =#
        ToroidalComponent{Generic}(args...)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:71 =#
ToroidalCoordinate(args...) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:71 =#
        ToroidalCoordinate{Generic}(args...)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:72 =#
(ToroidalCoordinate{T}() where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:72 =#
        ToroidalCoordinate{T}(:toroidal)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:73 =#
(ToroidalComponent{T}() where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:73 =#
        ToroidalComponent{T}(:toroidal)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:74 =#
((c::ToroidalComponent{T})(E::Type) where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:74 =#
        ToroidalComponent{E}
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:75 =#
((c::ToroidalCoordinate{T})(E::Type) where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:75 =#
        ToroidalCoordinate{E}
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:76 =#
export ToroidalComponent, ToroidalCoordinate
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:54 =#
struct CrossfieldComponent{T} <: Component{T}
    #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:55 =#
    s::Symbol
end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:57 =#
struct CrossfieldCoordinate{T} <: Coordinate{T}
    #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:58 =#
    s::Symbol
end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:61 =#
get_component_name(::CrossfieldComponent) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:61 =#
        :crossfield
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:62 =#
get_component(v::AbstractCSComponentObject, c::CrossfieldComponent) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:62 =#
        getproperty(v, :crossfield)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:63 =#
Component{:crossfield}() = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:63 =#
        CrossfieldComponent{Generic}()
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:64 =#
Coordinate{:crossfield}() = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:64 =#
        CrossfieldCoordinate{Generic}()
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:65 =#
get_coordinate_name(::CrossfieldCoordinate) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:65 =#
        :crossfield
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:66 =#
get_component_name(::Type{<:CrossfieldComponent}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:66 =#
        :crossfield
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:67 =#
get_coordinate_name(::Type{<:CrossfieldCoordinate}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:67 =#
        :crossfield
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:70 =#
CrossfieldComponent(args...) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:70 =#
        CrossfieldComponent{Generic}(args...)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:71 =#
CrossfieldCoordinate(args...) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:71 =#
        CrossfieldCoordinate{Generic}(args...)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:72 =#
(CrossfieldCoordinate{T}() where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:72 =#
        CrossfieldCoordinate{T}(:crossfield)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:73 =#
(CrossfieldComponent{T}() where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:73 =#
        CrossfieldComponent{T}(:crossfield)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:74 =#
((c::CrossfieldComponent{T})(E::Type) where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:74 =#
        CrossfieldComponent{E}
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:75 =#
((c::CrossfieldCoordinate{T})(E::Type) where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:75 =#
        CrossfieldCoordinate{E}
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:76 =#
export CrossfieldComponent, CrossfieldCoordinate
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:54 =#
struct DiamagneticComponent{T} <: Component{T}
    #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:55 =#
    s::Symbol
end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:57 =#
struct DiamagneticCoordinate{T} <: Coordinate{T}
    #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:58 =#
    s::Symbol
end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:61 =#
get_component_name(::DiamagneticComponent) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:61 =#
        :diamagnetic
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:62 =#
get_component(v::AbstractCSComponentObject, c::DiamagneticComponent) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:62 =#
        getproperty(v, :diamagnetic)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:63 =#
Component{:diamagnetic}() = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:63 =#
        DiamagneticComponent{Generic}()
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:64 =#
Coordinate{:diamagnetic}() = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:64 =#
        DiamagneticCoordinate{Generic}()
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:65 =#
get_coordinate_name(::DiamagneticCoordinate) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:65 =#
        :diamagnetic
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:66 =#
get_component_name(::Type{<:DiamagneticComponent}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:66 =#
        :diamagnetic
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:67 =#
get_coordinate_name(::Type{<:DiamagneticCoordinate}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:67 =#
        :diamagnetic
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:70 =#
DiamagneticComponent(args...) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:70 =#
        DiamagneticComponent{Generic}(args...)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:71 =#
DiamagneticCoordinate(args...) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:71 =#
        DiamagneticCoordinate{Generic}(args...)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:72 =#
(DiamagneticCoordinate{T}() where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:72 =#
        DiamagneticCoordinate{T}(:diamagnetic)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:73 =#
(DiamagneticComponent{T}() where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:73 =#
        DiamagneticComponent{T}(:diamagnetic)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:74 =#
((c::DiamagneticComponent{T})(E::Type) where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:74 =#
        DiamagneticComponent{E}
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:75 =#
((c::DiamagneticCoordinate{T})(E::Type) where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:75 =#
        DiamagneticCoordinate{E}
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:76 =#
export DiamagneticComponent, DiamagneticCoordinate
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:54 =#
struct PoloidalComponent{T} <: Component{T}
    #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:55 =#
    s::Symbol
end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:57 =#
struct PoloidalCoordinate{T} <: Coordinate{T}
    #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:58 =#
    s::Symbol
end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:61 =#
get_component_name(::PoloidalComponent) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:61 =#
        :poloidal
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:62 =#
get_component(v::AbstractCSComponentObject, c::PoloidalComponent) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:62 =#
        getproperty(v, :poloidal)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:63 =#
Component{:poloidal}() = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:63 =#
        PoloidalComponent{Generic}()
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:64 =#
Coordinate{:poloidal}() = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:64 =#
        PoloidalCoordinate{Generic}()
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:65 =#
get_coordinate_name(::PoloidalCoordinate) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:65 =#
        :poloidal
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:66 =#
get_component_name(::Type{<:PoloidalComponent}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:66 =#
        :poloidal
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:67 =#
get_coordinate_name(::Type{<:PoloidalCoordinate}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:67 =#
        :poloidal
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:70 =#
PoloidalComponent(args...) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:70 =#
        PoloidalComponent{Generic}(args...)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:71 =#
PoloidalCoordinate(args...) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:71 =#
        PoloidalCoordinate{Generic}(args...)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:72 =#
(PoloidalCoordinate{T}() where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:72 =#
        PoloidalCoordinate{T}(:poloidal)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:73 =#
(PoloidalComponent{T}() where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:73 =#
        PoloidalComponent{T}(:poloidal)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:74 =#
((c::PoloidalComponent{T})(E::Type) where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:74 =#
        PoloidalComponent{E}
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:75 =#
((c::PoloidalCoordinate{T})(E::Type) where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:75 =#
        PoloidalCoordinate{E}
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:76 =#
export PoloidalComponent, PoloidalCoordinate
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:54 =#
struct AzimuthalComponent{T} <: Component{T}
    #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:55 =#
    s::Symbol
end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:57 =#
struct AzimuthalCoordinate{T} <: Coordinate{T}
    #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:58 =#
    s::Symbol
end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:61 =#
get_component_name(::AzimuthalComponent) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:61 =#
        :azimuthal
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:62 =#
get_component(v::AbstractCSComponentObject, c::AzimuthalComponent) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:62 =#
        getproperty(v, :azimuthal)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:63 =#
Component{:azimuthal}() = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:63 =#
        AzimuthalComponent{Generic}()
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:64 =#
Coordinate{:azimuthal}() = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:64 =#
        AzimuthalCoordinate{Generic}()
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:65 =#
get_coordinate_name(::AzimuthalCoordinate) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:65 =#
        :azimuthal
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:66 =#
get_component_name(::Type{<:AzimuthalComponent}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:66 =#
        :azimuthal
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:67 =#
get_coordinate_name(::Type{<:AzimuthalCoordinate}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:67 =#
        :azimuthal
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:70 =#
AzimuthalComponent(args...) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:70 =#
        AzimuthalComponent{Generic}(args...)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:71 =#
AzimuthalCoordinate(args...) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:71 =#
        AzimuthalCoordinate{Generic}(args...)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:72 =#
(AzimuthalCoordinate{T}() where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:72 =#
        AzimuthalCoordinate{T}(:azimuthal)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:73 =#
(AzimuthalComponent{T}() where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:73 =#
        AzimuthalComponent{T}(:azimuthal)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:74 =#
((c::AzimuthalComponent{T})(E::Type) where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:74 =#
        AzimuthalComponent{E}
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:75 =#
((c::AzimuthalCoordinate{T})(E::Type) where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:75 =#
        AzimuthalCoordinate{E}
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:76 =#
export AzimuthalComponent, AzimuthalCoordinate
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:54 =#
struct RadialComponent{T} <: Component{T}
    #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:55 =#
    s::Symbol
end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:57 =#
struct RadialCoordinate{T} <: Coordinate{T}
    #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:58 =#
    s::Symbol
end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:61 =#
get_component_name(::RadialComponent) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:61 =#
        :radial
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:62 =#
get_component(v::AbstractCSComponentObject, c::RadialComponent) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:62 =#
        getproperty(v, :radial)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:63 =#
Component{:radial}() = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:63 =#
        RadialComponent{Generic}()
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:64 =#
Coordinate{:radial}() = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:64 =#
        RadialCoordinate{Generic}()
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:65 =#
get_coordinate_name(::RadialCoordinate) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:65 =#
        :radial
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:66 =#
get_component_name(::Type{<:RadialComponent}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:66 =#
        :radial
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:67 =#
get_coordinate_name(::Type{<:RadialCoordinate}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:67 =#
        :radial
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:70 =#
RadialComponent(args...) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:70 =#
        RadialComponent{Generic}(args...)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:71 =#
RadialCoordinate(args...) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:71 =#
        RadialCoordinate{Generic}(args...)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:72 =#
(RadialCoordinate{T}() where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:72 =#
        RadialCoordinate{T}(:radial)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:73 =#
(RadialComponent{T}() where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:73 =#
        RadialComponent{T}(:radial)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:74 =#
((c::RadialComponent{T})(E::Type) where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:74 =#
        RadialComponent{E}
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:75 =#
((c::RadialCoordinate{T})(E::Type) where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:75 =#
        RadialCoordinate{E}
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:76 =#
export RadialComponent, RadialCoordinate
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:54 =#
struct VerticalComponent{T} <: Component{T}
    #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:55 =#
    s::Symbol
end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:57 =#
struct VerticalCoordinate{T} <: Coordinate{T}
    #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:58 =#
    s::Symbol
end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:61 =#
get_component_name(::VerticalComponent) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:61 =#
        :vertical
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:62 =#
get_component(v::AbstractCSComponentObject, c::VerticalComponent) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:62 =#
        getproperty(v, :vertical)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:63 =#
Component{:vertical}() = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:63 =#
        VerticalComponent{Generic}()
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:64 =#
Coordinate{:vertical}() = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:64 =#
        VerticalCoordinate{Generic}()
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:65 =#
get_coordinate_name(::VerticalCoordinate) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:65 =#
        :vertical
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:66 =#
get_component_name(::Type{<:VerticalComponent}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:66 =#
        :vertical
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:67 =#
get_coordinate_name(::Type{<:VerticalCoordinate}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:67 =#
        :vertical
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:70 =#
VerticalComponent(args...) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:70 =#
        VerticalComponent{Generic}(args...)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:71 =#
VerticalCoordinate(args...) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:71 =#
        VerticalCoordinate{Generic}(args...)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:72 =#
(VerticalCoordinate{T}() where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:72 =#
        VerticalCoordinate{T}(:vertical)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:73 =#
(VerticalComponent{T}() where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:73 =#
        VerticalComponent{T}(:vertical)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:74 =#
((c::VerticalComponent{T})(E::Type) where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:74 =#
        VerticalComponent{E}
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:75 =#
((c::VerticalCoordinate{T})(E::Type) where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:75 =#
        VerticalCoordinate{E}
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:76 =#
export VerticalComponent, VerticalCoordinate
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:54 =#
struct XComponent{T} <: Component{T}
    #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:55 =#
    s::Symbol
end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:57 =#
struct XCoordinate{T} <: Coordinate{T}
    #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:58 =#
    s::Symbol
end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:61 =#
get_component_name(::XComponent) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:61 =#
        :x
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:62 =#
get_component(v::AbstractCSComponentObject, c::XComponent) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:62 =#
        getproperty(v, :x)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:63 =#
Component{:x}() = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:63 =#
        XComponent{Generic}()
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:64 =#
Coordinate{:x}() = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:64 =#
        XCoordinate{Generic}()
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:65 =#
get_coordinate_name(::XCoordinate) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:65 =#
        :x
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:66 =#
get_component_name(::Type{<:XComponent}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:66 =#
        :x
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:67 =#
get_coordinate_name(::Type{<:XCoordinate}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:67 =#
        :x
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:70 =#
XComponent(args...) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:70 =#
        XComponent{Generic}(args...)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:71 =#
XCoordinate(args...) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:71 =#
        XCoordinate{Generic}(args...)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:72 =#
(XCoordinate{T}() where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:72 =#
        XCoordinate{T}(:x)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:73 =#
(XComponent{T}() where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:73 =#
        XComponent{T}(:x)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:74 =#
((c::XComponent{T})(E::Type) where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:74 =#
        XComponent{E}
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:75 =#
((c::XCoordinate{T})(E::Type) where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:75 =#
        XCoordinate{E}
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:76 =#
export XComponent, XCoordinate
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:54 =#
struct YComponent{T} <: Component{T}
    #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:55 =#
    s::Symbol
end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:57 =#
struct YCoordinate{T} <: Coordinate{T}
    #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:58 =#
    s::Symbol
end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:61 =#
get_component_name(::YComponent) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:61 =#
        :y
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:62 =#
get_component(v::AbstractCSComponentObject, c::YComponent) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:62 =#
        getproperty(v, :y)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:63 =#
Component{:y}() = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:63 =#
        YComponent{Generic}()
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:64 =#
Coordinate{:y}() = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:64 =#
        YCoordinate{Generic}()
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:65 =#
get_coordinate_name(::YCoordinate) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:65 =#
        :y
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:66 =#
get_component_name(::Type{<:YComponent}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:66 =#
        :y
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:67 =#
get_coordinate_name(::Type{<:YCoordinate}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:67 =#
        :y
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:70 =#
YComponent(args...) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:70 =#
        YComponent{Generic}(args...)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:71 =#
YCoordinate(args...) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:71 =#
        YCoordinate{Generic}(args...)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:72 =#
(YCoordinate{T}() where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:72 =#
        YCoordinate{T}(:y)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:73 =#
(YComponent{T}() where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:73 =#
        YComponent{T}(:y)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:74 =#
((c::YComponent{T})(E::Type) where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:74 =#
        YComponent{E}
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:75 =#
((c::YCoordinate{T})(E::Type) where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:75 =#
        YCoordinate{E}
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:76 =#
export YComponent, YCoordinate
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:54 =#
struct ZComponent{T} <: Component{T}
    #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:55 =#
    s::Symbol
end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:57 =#
struct ZCoordinate{T} <: Coordinate{T}
    #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:58 =#
    s::Symbol
end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:61 =#
get_component_name(::ZComponent) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:61 =#
        :z
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:62 =#
get_component(v::AbstractCSComponentObject, c::ZComponent) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:62 =#
        getproperty(v, :z)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:63 =#
Component{:z}() = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:63 =#
        ZComponent{Generic}()
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:64 =#
Coordinate{:z}() = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:64 =#
        ZCoordinate{Generic}()
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:65 =#
get_coordinate_name(::ZCoordinate) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:65 =#
        :z
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:66 =#
get_component_name(::Type{<:ZComponent}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:66 =#
        :z
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:67 =#
get_coordinate_name(::Type{<:ZCoordinate}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:67 =#
        :z
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:70 =#
ZComponent(args...) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:70 =#
        ZComponent{Generic}(args...)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:71 =#
ZCoordinate(args...) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:71 =#
        ZCoordinate{Generic}(args...)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:72 =#
(ZCoordinate{T}() where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:72 =#
        ZCoordinate{T}(:z)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:73 =#
(ZComponent{T}() where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:73 =#
        ZComponent{T}(:z)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:74 =#
((c::ZComponent{T})(E::Type) where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:74 =#
        ZComponent{E}
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:75 =#
((c::ZCoordinate{T})(E::Type) where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:75 =#
        ZCoordinate{E}
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:76 =#
export ZComponent, ZCoordinate
struct CartesianCS <: CoordinateSystem
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    x::XComponent
    y::YComponent
    z::ZComponent
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
export CartesianCS
CartesianCS() = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:192 =#
        CartesianCS((T() for T = fieldtypes(CartesianCS))...)
    end
((c::XComponent)(v::AbstractComponentVector{CartesianCS}) where {E1, E2, E3}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:194 =#
        getfield(v, 1)
    end
((c::YComponent)(v::AbstractComponentVector{CartesianCS}) where {E1, E2, E3}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:194 =#
        getfield(v, 2)
    end
((c::ZComponent)(v::AbstractComponentVector{CartesianCS}) where {E1, E2, E3}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:194 =#
        getfield(v, 3)
    end
((c::XCoordinate)(v::AbstractComponentVector{CartesianCS}) where {E1, E2, E3}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:197 =#
        getfield(v, 1)
    end
((c::YCoordinate)(v::AbstractComponentVector{CartesianCS}) where {E1, E2, E3}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:197 =#
        getfield(v, 2)
    end
((c::ZCoordinate)(v::AbstractComponentVector{CartesianCS}) where {E1, E2, E3}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:197 =#
        getfield(v, 3)
    end
abstract type PhysicsComponentVector{E1, E2, E3, S} <: AbstractPhysicsComponentVector{S} end
struct CartesianCSPhysicsComponentVector{E1, E2, E3} <: PhysicsComponentVector{E1, E2, E3, CartesianCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    x::E1
    y::E2
    z::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
PhysicsComponentVector{CartesianCS}(x, y, z) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        CartesianCSPhysicsComponentVector(x, y, z)
    end
(e::CartesianCSPhysicsComponentVector)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type PhysicsComponentVectors{E1, E2, E3, S} <: AbstractPhysicsComponentVectors{S} end
struct CartesianCSPhysicsComponentVectors{E1, E2, E3} <: PhysicsComponentVectors{E1, E2, E3, CartesianCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    x::E1
    y::E2
    z::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
PhysicsComponentVectors{CartesianCS}(x, y, z) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        CartesianCSPhysicsComponentVectors(x, y, z)
    end
(e::CartesianCSPhysicsComponentVectors)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type PhysicsCoordinates{E1, E2, E3, S} <: AbstractPhysicsCoordinates{S} end
struct CartesianCSPhysicsCoordinates{E1, E2, E3} <: PhysicsCoordinates{E1, E2, E3, CartesianCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    x::E1
    y::E2
    z::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
PhysicsCoordinates{CartesianCS}(x, y, z) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        CartesianCSPhysicsCoordinates(x, y, z)
    end
(e::CartesianCSPhysicsCoordinates)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type NormalizationMetric{E1, E2, E3, S} <: AbstractNormalizationMetric{S} end
struct CartesianCSNormalizationMetric{E1, E2, E3} <: NormalizationMetric{E1, E2, E3, CartesianCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    x::E1
    y::E2
    z::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
NormalizationMetric{CartesianCS}(x, y, z) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        CartesianCSNormalizationMetric(x, y, z)
    end
(e::CartesianCSNormalizationMetric)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type BasisVector{E1, E2, E3, S} <: AbstractBasisVector{S} end
struct CartesianCSBasisVector{E1, E2, E3} <: BasisVector{E1, E2, E3, CartesianCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    x::E1
    y::E2
    z::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
BasisVector{CartesianCS}(x, y, z) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        CartesianCSBasisVector(x, y, z)
    end
(e::CartesianCSBasisVector)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type UnitBasisVector{E1, E2, E3, S} <: AbstractUnitBasisVector{S} end
struct CartesianCSUnitBasisVector{E1, E2, E3} <: UnitBasisVector{E1, E2, E3, CartesianCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    x::E1
    y::E2
    z::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
UnitBasisVector{CartesianCS}(x, y, z) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        CartesianCSUnitBasisVector(x, y, z)
    end
(e::CartesianCSUnitBasisVector)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type RightContraction{E1, E2, E3, S} <: AbstractRightContraction{S} end
struct CartesianCSRightContraction{E1, E2, E3} <: RightContraction{E1, E2, E3, CartesianCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    x::E1
    y::E2
    z::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
RightContraction{CartesianCS}(x, y, z) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        CartesianCSRightContraction(x, y, z)
    end
(e::CartesianCSRightContraction)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type BasisVectors{E1, E2, E3, S} <: AbstractBasisVectors{S} end
struct CartesianCSBasisVectors{E1, E2, E3} <: BasisVectors{E1, E2, E3, CartesianCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    x::E1
    y::E2
    z::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
BasisVectors{CartesianCS}(x, y, z) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        CartesianCSBasisVectors(x, y, z)
    end
(e::CartesianCSBasisVectors)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type UnitBasisVectors{E1, E2, E3, S} <: AbstractUnitBasisVectors{S} end
struct CartesianCSUnitBasisVectors{E1, E2, E3} <: UnitBasisVectors{E1, E2, E3, CartesianCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    x::E1
    y::E2
    z::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
UnitBasisVectors{CartesianCS}(x, y, z) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        CartesianCSUnitBasisVectors(x, y, z)
    end
(e::CartesianCSUnitBasisVectors)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type DyadicTensor{E1, E2, E3, S} <: AbstractDyadicTensor{S} end
struct CartesianCSDyadicTensor{E1, E2, E3} <: DyadicTensor{E1, E2, E3, CartesianCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    x::E1
    y::E2
    z::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
DyadicTensor{CartesianCS}(x, y, z) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        CartesianCSDyadicTensor(x, y, z)
    end
(e::CartesianCSDyadicTensor)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type DyadicTensorComponent{E1, E2, E3, S} <: AbstractDyadicTensorComponent{S} end
struct CartesianCSDyadicTensorComponent{E1, E2, E3} <: DyadicTensorComponent{E1, E2, E3, CartesianCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    x::E1
    y::E2
    z::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
DyadicTensorComponent{CartesianCS}(x, y, z) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        CartesianCSDyadicTensorComponent(x, y, z)
    end
(e::CartesianCSDyadicTensorComponent)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type BasisChangeComponent{E1, E2, E3, S} <: AbstractBasisChangeComponent{S} end
struct CartesianCSBasisChangeComponent{E1, E2, E3} <: BasisChangeComponent{E1, E2, E3, CartesianCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    x::E1
    y::E2
    z::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
BasisChangeComponent{CartesianCS}(x, y, z) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        CartesianCSBasisChangeComponent(x, y, z)
    end
(e::CartesianCSBasisChangeComponent)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type MetricTensorComponent{E1, E2, E3, S} <: AbstractMetricTensorComponent{S} end
struct CartesianCSMetricTensorComponent{E1, E2, E3} <: MetricTensorComponent{E1, E2, E3, CartesianCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    x::E1
    y::E2
    z::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
MetricTensorComponent{CartesianCS}(x, y, z) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        CartesianCSMetricTensorComponent(x, y, z)
    end
(e::CartesianCSMetricTensorComponent)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type TensorComponent{E1, E2, E3, S} <: AbstractTensorComponent{S} end
struct CartesianCSTensorComponent{E1, E2, E3} <: TensorComponent{E1, E2, E3, CartesianCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    x::E1
    y::E2
    z::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
TensorComponent{CartesianCS}(x, y, z) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        CartesianCSTensorComponent(x, y, z)
    end
(e::CartesianCSTensorComponent)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type MetricTensor{E1, E2, E3, S} <: AbstractMetricTensor{S} end
struct CartesianCSMetricTensor{E1, E2, E3} <: MetricTensor{E1, E2, E3, CartesianCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    x::E1
    y::E2
    z::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
MetricTensor{CartesianCS}(x, y, z) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        CartesianCSMetricTensor(x, y, z)
    end
(e::CartesianCSMetricTensor)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type Tensor{E1, E2, E3, S} <: AbstractTensor{S} end
struct CartesianCSTensor{E1, E2, E3} <: Tensor{E1, E2, E3, CartesianCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    x::E1
    y::E2
    z::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
Tensor{CartesianCS}(x, y, z) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        CartesianCSTensor(x, y, z)
    end
(e::CartesianCSTensor)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type DiagonalTensor{E1, E2, E3, S} <: AbstractDiagonalTensor{S} end
struct CartesianCSDiagonalTensor{E1, E2, E3} <: DiagonalTensor{E1, E2, E3, CartesianCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    x::E1
    y::E2
    z::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
DiagonalTensor{CartesianCS}(x, y, z) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        CartesianCSDiagonalTensor(x, y, z)
    end
(e::CartesianCSDiagonalTensor)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
struct CartesianCSComponentOperator{C1, C2, C3, O} <: (CoordinatesSystems.ComponentOperator){C1, C2, C3, O, CartesianCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    x::C1
    y::C2
    z::C3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
(ComponentOperator{CartesianCS, O}(v1::V1, v2::V2, v3::V3) where {O, V1, V2, V3}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:234 =#
        CartesianCSComponentOperator{O}(v1, v2, v3)
    end
(CartesianCSComponentOperator{O}(v1::V1, v2::V2, v3::V3) where {O, V1, V2, V3}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:235 =#
        CartesianCSComponentOperator{V1, V2, V3, O}(v1, v2, v3)
    end
struct ParallelFieldAlignedCS <: CoordinateSystem
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    ǁ::ParallelComponent
    ⊥::CrossfieldComponent
    ʌ::DiamagneticComponent
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
export ParallelFieldAlignedCS
ParallelFieldAlignedCS() = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:192 =#
        ParallelFieldAlignedCS((T() for T = fieldtypes(ParallelFieldAlignedCS))...)
    end
((c::ParallelComponent)(v::AbstractComponentVector{ParallelFieldAlignedCS}) where {E1, E2, E3}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:194 =#
        getfield(v, 1)
    end
((c::CrossfieldComponent)(v::AbstractComponentVector{ParallelFieldAlignedCS}) where {E1, E2, E3}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:194 =#
        getfield(v, 2)
    end
((c::DiamagneticComponent)(v::AbstractComponentVector{ParallelFieldAlignedCS}) where {E1, E2, E3}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:194 =#
        getfield(v, 3)
    end
((c::ParallelCoordinate)(v::AbstractComponentVector{ParallelFieldAlignedCS}) where {E1, E2, E3}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:197 =#
        getfield(v, 1)
    end
((c::CrossfieldCoordinate)(v::AbstractComponentVector{ParallelFieldAlignedCS}) where {E1, E2, E3}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:197 =#
        getfield(v, 2)
    end
((c::DiamagneticCoordinate)(v::AbstractComponentVector{ParallelFieldAlignedCS}) where {E1, E2, E3}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:197 =#
        getfield(v, 3)
    end
abstract type PhysicsComponentVector{E1, E2, E3, S} <: AbstractPhysicsComponentVector{S} end
struct ParallelFieldAlignedCSPhysicsComponentVector{E1, E2, E3} <: PhysicsComponentVector{E1, E2, E3, ParallelFieldAlignedCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    ǁ::E1
    ⊥::E2
    ʌ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
PhysicsComponentVector{ParallelFieldAlignedCS}(ǁ, ⊥, ʌ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        ParallelFieldAlignedCSPhysicsComponentVector(ǁ, ⊥, ʌ)
    end
(e::ParallelFieldAlignedCSPhysicsComponentVector)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type PhysicsComponentVectors{E1, E2, E3, S} <: AbstractPhysicsComponentVectors{S} end
struct ParallelFieldAlignedCSPhysicsComponentVectors{E1, E2, E3} <: PhysicsComponentVectors{E1, E2, E3, ParallelFieldAlignedCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    ǁ::E1
    ⊥::E2
    ʌ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
PhysicsComponentVectors{ParallelFieldAlignedCS}(ǁ, ⊥, ʌ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        ParallelFieldAlignedCSPhysicsComponentVectors(ǁ, ⊥, ʌ)
    end
(e::ParallelFieldAlignedCSPhysicsComponentVectors)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type PhysicsCoordinates{E1, E2, E3, S} <: AbstractPhysicsCoordinates{S} end
struct ParallelFieldAlignedCSPhysicsCoordinates{E1, E2, E3} <: PhysicsCoordinates{E1, E2, E3, ParallelFieldAlignedCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    ǁ::E1
    ⊥::E2
    ʌ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
PhysicsCoordinates{ParallelFieldAlignedCS}(ǁ, ⊥, ʌ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        ParallelFieldAlignedCSPhysicsCoordinates(ǁ, ⊥, ʌ)
    end
(e::ParallelFieldAlignedCSPhysicsCoordinates)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type NormalizationMetric{E1, E2, E3, S} <: AbstractNormalizationMetric{S} end
struct ParallelFieldAlignedCSNormalizationMetric{E1, E2, E3} <: NormalizationMetric{E1, E2, E3, ParallelFieldAlignedCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    ǁ::E1
    ⊥::E2
    ʌ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
NormalizationMetric{ParallelFieldAlignedCS}(ǁ, ⊥, ʌ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        ParallelFieldAlignedCSNormalizationMetric(ǁ, ⊥, ʌ)
    end
(e::ParallelFieldAlignedCSNormalizationMetric)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type BasisVector{E1, E2, E3, S} <: AbstractBasisVector{S} end
struct ParallelFieldAlignedCSBasisVector{E1, E2, E3} <: BasisVector{E1, E2, E3, ParallelFieldAlignedCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    ǁ::E1
    ⊥::E2
    ʌ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
BasisVector{ParallelFieldAlignedCS}(ǁ, ⊥, ʌ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        ParallelFieldAlignedCSBasisVector(ǁ, ⊥, ʌ)
    end
(e::ParallelFieldAlignedCSBasisVector)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type UnitBasisVector{E1, E2, E3, S} <: AbstractUnitBasisVector{S} end
struct ParallelFieldAlignedCSUnitBasisVector{E1, E2, E3} <: UnitBasisVector{E1, E2, E3, ParallelFieldAlignedCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    ǁ::E1
    ⊥::E2
    ʌ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
UnitBasisVector{ParallelFieldAlignedCS}(ǁ, ⊥, ʌ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        ParallelFieldAlignedCSUnitBasisVector(ǁ, ⊥, ʌ)
    end
(e::ParallelFieldAlignedCSUnitBasisVector)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type RightContraction{E1, E2, E3, S} <: AbstractRightContraction{S} end
struct ParallelFieldAlignedCSRightContraction{E1, E2, E3} <: RightContraction{E1, E2, E3, ParallelFieldAlignedCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    ǁ::E1
    ⊥::E2
    ʌ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
RightContraction{ParallelFieldAlignedCS}(ǁ, ⊥, ʌ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        ParallelFieldAlignedCSRightContraction(ǁ, ⊥, ʌ)
    end
(e::ParallelFieldAlignedCSRightContraction)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type BasisVectors{E1, E2, E3, S} <: AbstractBasisVectors{S} end
struct ParallelFieldAlignedCSBasisVectors{E1, E2, E3} <: BasisVectors{E1, E2, E3, ParallelFieldAlignedCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    ǁ::E1
    ⊥::E2
    ʌ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
BasisVectors{ParallelFieldAlignedCS}(ǁ, ⊥, ʌ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        ParallelFieldAlignedCSBasisVectors(ǁ, ⊥, ʌ)
    end
(e::ParallelFieldAlignedCSBasisVectors)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type UnitBasisVectors{E1, E2, E3, S} <: AbstractUnitBasisVectors{S} end
struct ParallelFieldAlignedCSUnitBasisVectors{E1, E2, E3} <: UnitBasisVectors{E1, E2, E3, ParallelFieldAlignedCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    ǁ::E1
    ⊥::E2
    ʌ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
UnitBasisVectors{ParallelFieldAlignedCS}(ǁ, ⊥, ʌ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        ParallelFieldAlignedCSUnitBasisVectors(ǁ, ⊥, ʌ)
    end
(e::ParallelFieldAlignedCSUnitBasisVectors)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type DyadicTensor{E1, E2, E3, S} <: AbstractDyadicTensor{S} end
struct ParallelFieldAlignedCSDyadicTensor{E1, E2, E3} <: DyadicTensor{E1, E2, E3, ParallelFieldAlignedCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    ǁ::E1
    ⊥::E2
    ʌ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
DyadicTensor{ParallelFieldAlignedCS}(ǁ, ⊥, ʌ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        ParallelFieldAlignedCSDyadicTensor(ǁ, ⊥, ʌ)
    end
(e::ParallelFieldAlignedCSDyadicTensor)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type DyadicTensorComponent{E1, E2, E3, S} <: AbstractDyadicTensorComponent{S} end
struct ParallelFieldAlignedCSDyadicTensorComponent{E1, E2, E3} <: DyadicTensorComponent{E1, E2, E3, ParallelFieldAlignedCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    ǁ::E1
    ⊥::E2
    ʌ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
DyadicTensorComponent{ParallelFieldAlignedCS}(ǁ, ⊥, ʌ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        ParallelFieldAlignedCSDyadicTensorComponent(ǁ, ⊥, ʌ)
    end
(e::ParallelFieldAlignedCSDyadicTensorComponent)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type BasisChangeComponent{E1, E2, E3, S} <: AbstractBasisChangeComponent{S} end
struct ParallelFieldAlignedCSBasisChangeComponent{E1, E2, E3} <: BasisChangeComponent{E1, E2, E3, ParallelFieldAlignedCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    ǁ::E1
    ⊥::E2
    ʌ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
BasisChangeComponent{ParallelFieldAlignedCS}(ǁ, ⊥, ʌ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        ParallelFieldAlignedCSBasisChangeComponent(ǁ, ⊥, ʌ)
    end
(e::ParallelFieldAlignedCSBasisChangeComponent)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type MetricTensorComponent{E1, E2, E3, S} <: AbstractMetricTensorComponent{S} end
struct ParallelFieldAlignedCSMetricTensorComponent{E1, E2, E3} <: MetricTensorComponent{E1, E2, E3, ParallelFieldAlignedCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    ǁ::E1
    ⊥::E2
    ʌ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
MetricTensorComponent{ParallelFieldAlignedCS}(ǁ, ⊥, ʌ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        ParallelFieldAlignedCSMetricTensorComponent(ǁ, ⊥, ʌ)
    end
(e::ParallelFieldAlignedCSMetricTensorComponent)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type TensorComponent{E1, E2, E3, S} <: AbstractTensorComponent{S} end
struct ParallelFieldAlignedCSTensorComponent{E1, E2, E3} <: TensorComponent{E1, E2, E3, ParallelFieldAlignedCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    ǁ::E1
    ⊥::E2
    ʌ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
TensorComponent{ParallelFieldAlignedCS}(ǁ, ⊥, ʌ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        ParallelFieldAlignedCSTensorComponent(ǁ, ⊥, ʌ)
    end
(e::ParallelFieldAlignedCSTensorComponent)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type MetricTensor{E1, E2, E3, S} <: AbstractMetricTensor{S} end
struct ParallelFieldAlignedCSMetricTensor{E1, E2, E3} <: MetricTensor{E1, E2, E3, ParallelFieldAlignedCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    ǁ::E1
    ⊥::E2
    ʌ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
MetricTensor{ParallelFieldAlignedCS}(ǁ, ⊥, ʌ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        ParallelFieldAlignedCSMetricTensor(ǁ, ⊥, ʌ)
    end
(e::ParallelFieldAlignedCSMetricTensor)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type Tensor{E1, E2, E3, S} <: AbstractTensor{S} end
struct ParallelFieldAlignedCSTensor{E1, E2, E3} <: Tensor{E1, E2, E3, ParallelFieldAlignedCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    ǁ::E1
    ⊥::E2
    ʌ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
Tensor{ParallelFieldAlignedCS}(ǁ, ⊥, ʌ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        ParallelFieldAlignedCSTensor(ǁ, ⊥, ʌ)
    end
(e::ParallelFieldAlignedCSTensor)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type DiagonalTensor{E1, E2, E3, S} <: AbstractDiagonalTensor{S} end
struct ParallelFieldAlignedCSDiagonalTensor{E1, E2, E3} <: DiagonalTensor{E1, E2, E3, ParallelFieldAlignedCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    ǁ::E1
    ⊥::E2
    ʌ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
DiagonalTensor{ParallelFieldAlignedCS}(ǁ, ⊥, ʌ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        ParallelFieldAlignedCSDiagonalTensor(ǁ, ⊥, ʌ)
    end
(e::ParallelFieldAlignedCSDiagonalTensor)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
struct ParallelFieldAlignedCSComponentOperator{C1, C2, C3, O} <: (CoordinatesSystems.ComponentOperator){C1, C2, C3, O, ParallelFieldAlignedCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    ǁ::C1
    ⊥::C2
    ʌ::C3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
(ComponentOperator{ParallelFieldAlignedCS, O}(v1::V1, v2::V2, v3::V3) where {O, V1, V2, V3}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:234 =#
        ParallelFieldAlignedCSComponentOperator{O}(v1, v2, v3)
    end
(ParallelFieldAlignedCSComponentOperator{O}(v1::V1, v2::V2, v3::V3) where {O, V1, V2, V3}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:235 =#
        ParallelFieldAlignedCSComponentOperator{V1, V2, V3, O}(v1, v2, v3)
    end
struct PoloidalFieldAlignedCS <: CoordinateSystem
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    x::PoloidalComponent
    y::CrossfieldComponent
    ϕ::ToroidalComponent
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
export PoloidalFieldAlignedCS
PoloidalFieldAlignedCS() = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:192 =#
        PoloidalFieldAlignedCS((T() for T = fieldtypes(PoloidalFieldAlignedCS))...)
    end
((c::PoloidalComponent)(v::AbstractComponentVector{PoloidalFieldAlignedCS}) where {E1, E2, E3}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:194 =#
        getfield(v, 1)
    end
((c::CrossfieldComponent)(v::AbstractComponentVector{PoloidalFieldAlignedCS}) where {E1, E2, E3}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:194 =#
        getfield(v, 2)
    end
((c::ToroidalComponent)(v::AbstractComponentVector{PoloidalFieldAlignedCS}) where {E1, E2, E3}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:194 =#
        getfield(v, 3)
    end
((c::PoloidalCoordinate)(v::AbstractComponentVector{PoloidalFieldAlignedCS}) where {E1, E2, E3}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:197 =#
        getfield(v, 1)
    end
((c::CrossfieldCoordinate)(v::AbstractComponentVector{PoloidalFieldAlignedCS}) where {E1, E2, E3}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:197 =#
        getfield(v, 2)
    end
((c::ToroidalCoordinate)(v::AbstractComponentVector{PoloidalFieldAlignedCS}) where {E1, E2, E3}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:197 =#
        getfield(v, 3)
    end
abstract type PhysicsComponentVector{E1, E2, E3, S} <: AbstractPhysicsComponentVector{S} end
struct PoloidalFieldAlignedCSPhysicsComponentVector{E1, E2, E3} <: PhysicsComponentVector{E1, E2, E3, PoloidalFieldAlignedCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    x::E1
    y::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
PhysicsComponentVector{PoloidalFieldAlignedCS}(x, y, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        PoloidalFieldAlignedCSPhysicsComponentVector(x, y, ϕ)
    end
(e::PoloidalFieldAlignedCSPhysicsComponentVector)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type PhysicsComponentVectors{E1, E2, E3, S} <: AbstractPhysicsComponentVectors{S} end
struct PoloidalFieldAlignedCSPhysicsComponentVectors{E1, E2, E3} <: PhysicsComponentVectors{E1, E2, E3, PoloidalFieldAlignedCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    x::E1
    y::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
PhysicsComponentVectors{PoloidalFieldAlignedCS}(x, y, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        PoloidalFieldAlignedCSPhysicsComponentVectors(x, y, ϕ)
    end
(e::PoloidalFieldAlignedCSPhysicsComponentVectors)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type PhysicsCoordinates{E1, E2, E3, S} <: AbstractPhysicsCoordinates{S} end
struct PoloidalFieldAlignedCSPhysicsCoordinates{E1, E2, E3} <: PhysicsCoordinates{E1, E2, E3, PoloidalFieldAlignedCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    x::E1
    y::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
PhysicsCoordinates{PoloidalFieldAlignedCS}(x, y, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        PoloidalFieldAlignedCSPhysicsCoordinates(x, y, ϕ)
    end
(e::PoloidalFieldAlignedCSPhysicsCoordinates)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type NormalizationMetric{E1, E2, E3, S} <: AbstractNormalizationMetric{S} end
struct PoloidalFieldAlignedCSNormalizationMetric{E1, E2, E3} <: NormalizationMetric{E1, E2, E3, PoloidalFieldAlignedCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    x::E1
    y::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
NormalizationMetric{PoloidalFieldAlignedCS}(x, y, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        PoloidalFieldAlignedCSNormalizationMetric(x, y, ϕ)
    end
(e::PoloidalFieldAlignedCSNormalizationMetric)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type BasisVector{E1, E2, E3, S} <: AbstractBasisVector{S} end
struct PoloidalFieldAlignedCSBasisVector{E1, E2, E3} <: BasisVector{E1, E2, E3, PoloidalFieldAlignedCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    x::E1
    y::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
BasisVector{PoloidalFieldAlignedCS}(x, y, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        PoloidalFieldAlignedCSBasisVector(x, y, ϕ)
    end
(e::PoloidalFieldAlignedCSBasisVector)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type UnitBasisVector{E1, E2, E3, S} <: AbstractUnitBasisVector{S} end
struct PoloidalFieldAlignedCSUnitBasisVector{E1, E2, E3} <: UnitBasisVector{E1, E2, E3, PoloidalFieldAlignedCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    x::E1
    y::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
UnitBasisVector{PoloidalFieldAlignedCS}(x, y, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        PoloidalFieldAlignedCSUnitBasisVector(x, y, ϕ)
    end
(e::PoloidalFieldAlignedCSUnitBasisVector)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type RightContraction{E1, E2, E3, S} <: AbstractRightContraction{S} end
struct PoloidalFieldAlignedCSRightContraction{E1, E2, E3} <: RightContraction{E1, E2, E3, PoloidalFieldAlignedCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    x::E1
    y::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
RightContraction{PoloidalFieldAlignedCS}(x, y, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        PoloidalFieldAlignedCSRightContraction(x, y, ϕ)
    end
(e::PoloidalFieldAlignedCSRightContraction)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type BasisVectors{E1, E2, E3, S} <: AbstractBasisVectors{S} end
struct PoloidalFieldAlignedCSBasisVectors{E1, E2, E3} <: BasisVectors{E1, E2, E3, PoloidalFieldAlignedCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    x::E1
    y::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
BasisVectors{PoloidalFieldAlignedCS}(x, y, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        PoloidalFieldAlignedCSBasisVectors(x, y, ϕ)
    end
(e::PoloidalFieldAlignedCSBasisVectors)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type UnitBasisVectors{E1, E2, E3, S} <: AbstractUnitBasisVectors{S} end
struct PoloidalFieldAlignedCSUnitBasisVectors{E1, E2, E3} <: UnitBasisVectors{E1, E2, E3, PoloidalFieldAlignedCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    x::E1
    y::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
UnitBasisVectors{PoloidalFieldAlignedCS}(x, y, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        PoloidalFieldAlignedCSUnitBasisVectors(x, y, ϕ)
    end
(e::PoloidalFieldAlignedCSUnitBasisVectors)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type DyadicTensor{E1, E2, E3, S} <: AbstractDyadicTensor{S} end
struct PoloidalFieldAlignedCSDyadicTensor{E1, E2, E3} <: DyadicTensor{E1, E2, E3, PoloidalFieldAlignedCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    x::E1
    y::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
DyadicTensor{PoloidalFieldAlignedCS}(x, y, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        PoloidalFieldAlignedCSDyadicTensor(x, y, ϕ)
    end
(e::PoloidalFieldAlignedCSDyadicTensor)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type DyadicTensorComponent{E1, E2, E3, S} <: AbstractDyadicTensorComponent{S} end
struct PoloidalFieldAlignedCSDyadicTensorComponent{E1, E2, E3} <: DyadicTensorComponent{E1, E2, E3, PoloidalFieldAlignedCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    x::E1
    y::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
DyadicTensorComponent{PoloidalFieldAlignedCS}(x, y, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        PoloidalFieldAlignedCSDyadicTensorComponent(x, y, ϕ)
    end
(e::PoloidalFieldAlignedCSDyadicTensorComponent)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type BasisChangeComponent{E1, E2, E3, S} <: AbstractBasisChangeComponent{S} end
struct PoloidalFieldAlignedCSBasisChangeComponent{E1, E2, E3} <: BasisChangeComponent{E1, E2, E3, PoloidalFieldAlignedCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    x::E1
    y::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
BasisChangeComponent{PoloidalFieldAlignedCS}(x, y, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        PoloidalFieldAlignedCSBasisChangeComponent(x, y, ϕ)
    end
(e::PoloidalFieldAlignedCSBasisChangeComponent)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type MetricTensorComponent{E1, E2, E3, S} <: AbstractMetricTensorComponent{S} end
struct PoloidalFieldAlignedCSMetricTensorComponent{E1, E2, E3} <: MetricTensorComponent{E1, E2, E3, PoloidalFieldAlignedCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    x::E1
    y::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
MetricTensorComponent{PoloidalFieldAlignedCS}(x, y, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        PoloidalFieldAlignedCSMetricTensorComponent(x, y, ϕ)
    end
(e::PoloidalFieldAlignedCSMetricTensorComponent)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type TensorComponent{E1, E2, E3, S} <: AbstractTensorComponent{S} end
struct PoloidalFieldAlignedCSTensorComponent{E1, E2, E3} <: TensorComponent{E1, E2, E3, PoloidalFieldAlignedCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    x::E1
    y::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
TensorComponent{PoloidalFieldAlignedCS}(x, y, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        PoloidalFieldAlignedCSTensorComponent(x, y, ϕ)
    end
(e::PoloidalFieldAlignedCSTensorComponent)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type MetricTensor{E1, E2, E3, S} <: AbstractMetricTensor{S} end
struct PoloidalFieldAlignedCSMetricTensor{E1, E2, E3} <: MetricTensor{E1, E2, E3, PoloidalFieldAlignedCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    x::E1
    y::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
MetricTensor{PoloidalFieldAlignedCS}(x, y, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        PoloidalFieldAlignedCSMetricTensor(x, y, ϕ)
    end
(e::PoloidalFieldAlignedCSMetricTensor)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type Tensor{E1, E2, E3, S} <: AbstractTensor{S} end
struct PoloidalFieldAlignedCSTensor{E1, E2, E3} <: Tensor{E1, E2, E3, PoloidalFieldAlignedCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    x::E1
    y::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
Tensor{PoloidalFieldAlignedCS}(x, y, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        PoloidalFieldAlignedCSTensor(x, y, ϕ)
    end
(e::PoloidalFieldAlignedCSTensor)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type DiagonalTensor{E1, E2, E3, S} <: AbstractDiagonalTensor{S} end
struct PoloidalFieldAlignedCSDiagonalTensor{E1, E2, E3} <: DiagonalTensor{E1, E2, E3, PoloidalFieldAlignedCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    x::E1
    y::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
DiagonalTensor{PoloidalFieldAlignedCS}(x, y, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        PoloidalFieldAlignedCSDiagonalTensor(x, y, ϕ)
    end
(e::PoloidalFieldAlignedCSDiagonalTensor)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
struct PoloidalFieldAlignedCSComponentOperator{C1, C2, C3, O} <: (CoordinatesSystems.ComponentOperator){C1, C2, C3, O, PoloidalFieldAlignedCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    x::C1
    y::C2
    ϕ::C3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
(ComponentOperator{PoloidalFieldAlignedCS, O}(v1::V1, v2::V2, v3::V3) where {O, V1, V2, V3}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:234 =#
        PoloidalFieldAlignedCSComponentOperator{O}(v1, v2, v3)
    end
(PoloidalFieldAlignedCSComponentOperator{O}(v1::V1, v2::V2, v3::V3) where {O, V1, V2, V3}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:235 =#
        PoloidalFieldAlignedCSComponentOperator{V1, V2, V3, O}(v1, v2, v3)
    end
struct CylindricalCS <: CoordinateSystem
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::RadialComponent
    θ::PoloidalComponent
    z::ZComponent
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
export CylindricalCS
CylindricalCS() = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:192 =#
        CylindricalCS((T() for T = fieldtypes(CylindricalCS))...)
    end
((c::RadialComponent)(v::AbstractComponentVector{CylindricalCS}) where {E1, E2, E3}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:194 =#
        getfield(v, 1)
    end
((c::PoloidalComponent)(v::AbstractComponentVector{CylindricalCS}) where {E1, E2, E3}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:194 =#
        getfield(v, 2)
    end
((c::ZComponent)(v::AbstractComponentVector{CylindricalCS}) where {E1, E2, E3}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:194 =#
        getfield(v, 3)
    end
((c::RadialCoordinate)(v::AbstractComponentVector{CylindricalCS}) where {E1, E2, E3}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:197 =#
        getfield(v, 1)
    end
((c::PoloidalCoordinate)(v::AbstractComponentVector{CylindricalCS}) where {E1, E2, E3}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:197 =#
        getfield(v, 2)
    end
((c::ZCoordinate)(v::AbstractComponentVector{CylindricalCS}) where {E1, E2, E3}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:197 =#
        getfield(v, 3)
    end
abstract type PhysicsComponentVector{E1, E2, E3, S} <: AbstractPhysicsComponentVector{S} end
struct CylindricalCSPhysicsComponentVector{E1, E2, E3} <: PhysicsComponentVector{E1, E2, E3, CylindricalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    z::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
PhysicsComponentVector{CylindricalCS}(r, θ, z) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        CylindricalCSPhysicsComponentVector(r, θ, z)
    end
(e::CylindricalCSPhysicsComponentVector)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type PhysicsComponentVectors{E1, E2, E3, S} <: AbstractPhysicsComponentVectors{S} end
struct CylindricalCSPhysicsComponentVectors{E1, E2, E3} <: PhysicsComponentVectors{E1, E2, E3, CylindricalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    z::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
PhysicsComponentVectors{CylindricalCS}(r, θ, z) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        CylindricalCSPhysicsComponentVectors(r, θ, z)
    end
(e::CylindricalCSPhysicsComponentVectors)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type PhysicsCoordinates{E1, E2, E3, S} <: AbstractPhysicsCoordinates{S} end
struct CylindricalCSPhysicsCoordinates{E1, E2, E3} <: PhysicsCoordinates{E1, E2, E3, CylindricalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    z::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
PhysicsCoordinates{CylindricalCS}(r, θ, z) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        CylindricalCSPhysicsCoordinates(r, θ, z)
    end
(e::CylindricalCSPhysicsCoordinates)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type NormalizationMetric{E1, E2, E3, S} <: AbstractNormalizationMetric{S} end
struct CylindricalCSNormalizationMetric{E1, E2, E3} <: NormalizationMetric{E1, E2, E3, CylindricalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    z::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
NormalizationMetric{CylindricalCS}(r, θ, z) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        CylindricalCSNormalizationMetric(r, θ, z)
    end
(e::CylindricalCSNormalizationMetric)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type BasisVector{E1, E2, E3, S} <: AbstractBasisVector{S} end
struct CylindricalCSBasisVector{E1, E2, E3} <: BasisVector{E1, E2, E3, CylindricalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    z::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
BasisVector{CylindricalCS}(r, θ, z) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        CylindricalCSBasisVector(r, θ, z)
    end
(e::CylindricalCSBasisVector)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type UnitBasisVector{E1, E2, E3, S} <: AbstractUnitBasisVector{S} end
struct CylindricalCSUnitBasisVector{E1, E2, E3} <: UnitBasisVector{E1, E2, E3, CylindricalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    z::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
UnitBasisVector{CylindricalCS}(r, θ, z) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        CylindricalCSUnitBasisVector(r, θ, z)
    end
(e::CylindricalCSUnitBasisVector)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type RightContraction{E1, E2, E3, S} <: AbstractRightContraction{S} end
struct CylindricalCSRightContraction{E1, E2, E3} <: RightContraction{E1, E2, E3, CylindricalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    z::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
RightContraction{CylindricalCS}(r, θ, z) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        CylindricalCSRightContraction(r, θ, z)
    end
(e::CylindricalCSRightContraction)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type BasisVectors{E1, E2, E3, S} <: AbstractBasisVectors{S} end
struct CylindricalCSBasisVectors{E1, E2, E3} <: BasisVectors{E1, E2, E3, CylindricalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    z::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
BasisVectors{CylindricalCS}(r, θ, z) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        CylindricalCSBasisVectors(r, θ, z)
    end
(e::CylindricalCSBasisVectors)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type UnitBasisVectors{E1, E2, E3, S} <: AbstractUnitBasisVectors{S} end
struct CylindricalCSUnitBasisVectors{E1, E2, E3} <: UnitBasisVectors{E1, E2, E3, CylindricalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    z::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
UnitBasisVectors{CylindricalCS}(r, θ, z) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        CylindricalCSUnitBasisVectors(r, θ, z)
    end
(e::CylindricalCSUnitBasisVectors)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type DyadicTensor{E1, E2, E3, S} <: AbstractDyadicTensor{S} end
struct CylindricalCSDyadicTensor{E1, E2, E3} <: DyadicTensor{E1, E2, E3, CylindricalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    z::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
DyadicTensor{CylindricalCS}(r, θ, z) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        CylindricalCSDyadicTensor(r, θ, z)
    end
(e::CylindricalCSDyadicTensor)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type DyadicTensorComponent{E1, E2, E3, S} <: AbstractDyadicTensorComponent{S} end
struct CylindricalCSDyadicTensorComponent{E1, E2, E3} <: DyadicTensorComponent{E1, E2, E3, CylindricalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    z::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
DyadicTensorComponent{CylindricalCS}(r, θ, z) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        CylindricalCSDyadicTensorComponent(r, θ, z)
    end
(e::CylindricalCSDyadicTensorComponent)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type BasisChangeComponent{E1, E2, E3, S} <: AbstractBasisChangeComponent{S} end
struct CylindricalCSBasisChangeComponent{E1, E2, E3} <: BasisChangeComponent{E1, E2, E3, CylindricalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    z::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
BasisChangeComponent{CylindricalCS}(r, θ, z) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        CylindricalCSBasisChangeComponent(r, θ, z)
    end
(e::CylindricalCSBasisChangeComponent)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type MetricTensorComponent{E1, E2, E3, S} <: AbstractMetricTensorComponent{S} end
struct CylindricalCSMetricTensorComponent{E1, E2, E3} <: MetricTensorComponent{E1, E2, E3, CylindricalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    z::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
MetricTensorComponent{CylindricalCS}(r, θ, z) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        CylindricalCSMetricTensorComponent(r, θ, z)
    end
(e::CylindricalCSMetricTensorComponent)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type TensorComponent{E1, E2, E3, S} <: AbstractTensorComponent{S} end
struct CylindricalCSTensorComponent{E1, E2, E3} <: TensorComponent{E1, E2, E3, CylindricalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    z::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
TensorComponent{CylindricalCS}(r, θ, z) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        CylindricalCSTensorComponent(r, θ, z)
    end
(e::CylindricalCSTensorComponent)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type MetricTensor{E1, E2, E3, S} <: AbstractMetricTensor{S} end
struct CylindricalCSMetricTensor{E1, E2, E3} <: MetricTensor{E1, E2, E3, CylindricalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    z::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
MetricTensor{CylindricalCS}(r, θ, z) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        CylindricalCSMetricTensor(r, θ, z)
    end
(e::CylindricalCSMetricTensor)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type Tensor{E1, E2, E3, S} <: AbstractTensor{S} end
struct CylindricalCSTensor{E1, E2, E3} <: Tensor{E1, E2, E3, CylindricalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    z::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
Tensor{CylindricalCS}(r, θ, z) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        CylindricalCSTensor(r, θ, z)
    end
(e::CylindricalCSTensor)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type DiagonalTensor{E1, E2, E3, S} <: AbstractDiagonalTensor{S} end
struct CylindricalCSDiagonalTensor{E1, E2, E3} <: DiagonalTensor{E1, E2, E3, CylindricalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    z::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
DiagonalTensor{CylindricalCS}(r, θ, z) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        CylindricalCSDiagonalTensor(r, θ, z)
    end
(e::CylindricalCSDiagonalTensor)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
struct CylindricalCSComponentOperator{C1, C2, C3, O} <: (CoordinatesSystems.ComponentOperator){C1, C2, C3, O, CylindricalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::C1
    θ::C2
    z::C3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
(ComponentOperator{CylindricalCS, O}(v1::V1, v2::V2, v3::V3) where {O, V1, V2, V3}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:234 =#
        CylindricalCSComponentOperator{O}(v1, v2, v3)
    end
(CylindricalCSComponentOperator{O}(v1::V1, v2::V2, v3::V3) where {O, V1, V2, V3}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:235 =#
        CylindricalCSComponentOperator{V1, V2, V3, O}(v1, v2, v3)
    end
struct SphericalCS <: CoordinateSystem
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::RadialComponent
    θ::PoloidalComponent
    Ψ::AzimuthalComponent
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
export SphericalCS
SphericalCS() = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:192 =#
        SphericalCS((T() for T = fieldtypes(SphericalCS))...)
    end
((c::RadialComponent)(v::AbstractComponentVector{SphericalCS}) where {E1, E2, E3}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:194 =#
        getfield(v, 1)
    end
((c::PoloidalComponent)(v::AbstractComponentVector{SphericalCS}) where {E1, E2, E3}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:194 =#
        getfield(v, 2)
    end
((c::AzimuthalComponent)(v::AbstractComponentVector{SphericalCS}) where {E1, E2, E3}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:194 =#
        getfield(v, 3)
    end
((c::RadialCoordinate)(v::AbstractComponentVector{SphericalCS}) where {E1, E2, E3}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:197 =#
        getfield(v, 1)
    end
((c::PoloidalCoordinate)(v::AbstractComponentVector{SphericalCS}) where {E1, E2, E3}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:197 =#
        getfield(v, 2)
    end
((c::AzimuthalCoordinate)(v::AbstractComponentVector{SphericalCS}) where {E1, E2, E3}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:197 =#
        getfield(v, 3)
    end
abstract type PhysicsComponentVector{E1, E2, E3, S} <: AbstractPhysicsComponentVector{S} end
struct SphericalCSPhysicsComponentVector{E1, E2, E3} <: PhysicsComponentVector{E1, E2, E3, SphericalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    Ψ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
PhysicsComponentVector{SphericalCS}(r, θ, Ψ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        SphericalCSPhysicsComponentVector(r, θ, Ψ)
    end
(e::SphericalCSPhysicsComponentVector)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type PhysicsComponentVectors{E1, E2, E3, S} <: AbstractPhysicsComponentVectors{S} end
struct SphericalCSPhysicsComponentVectors{E1, E2, E3} <: PhysicsComponentVectors{E1, E2, E3, SphericalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    Ψ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
PhysicsComponentVectors{SphericalCS}(r, θ, Ψ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        SphericalCSPhysicsComponentVectors(r, θ, Ψ)
    end
(e::SphericalCSPhysicsComponentVectors)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type PhysicsCoordinates{E1, E2, E3, S} <: AbstractPhysicsCoordinates{S} end
struct SphericalCSPhysicsCoordinates{E1, E2, E3} <: PhysicsCoordinates{E1, E2, E3, SphericalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    Ψ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
PhysicsCoordinates{SphericalCS}(r, θ, Ψ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        SphericalCSPhysicsCoordinates(r, θ, Ψ)
    end
(e::SphericalCSPhysicsCoordinates)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type NormalizationMetric{E1, E2, E3, S} <: AbstractNormalizationMetric{S} end
struct SphericalCSNormalizationMetric{E1, E2, E3} <: NormalizationMetric{E1, E2, E3, SphericalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    Ψ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
NormalizationMetric{SphericalCS}(r, θ, Ψ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        SphericalCSNormalizationMetric(r, θ, Ψ)
    end
(e::SphericalCSNormalizationMetric)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type BasisVector{E1, E2, E3, S} <: AbstractBasisVector{S} end
struct SphericalCSBasisVector{E1, E2, E3} <: BasisVector{E1, E2, E3, SphericalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    Ψ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
BasisVector{SphericalCS}(r, θ, Ψ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        SphericalCSBasisVector(r, θ, Ψ)
    end
(e::SphericalCSBasisVector)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type UnitBasisVector{E1, E2, E3, S} <: AbstractUnitBasisVector{S} end
struct SphericalCSUnitBasisVector{E1, E2, E3} <: UnitBasisVector{E1, E2, E3, SphericalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    Ψ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
UnitBasisVector{SphericalCS}(r, θ, Ψ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        SphericalCSUnitBasisVector(r, θ, Ψ)
    end
(e::SphericalCSUnitBasisVector)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type RightContraction{E1, E2, E3, S} <: AbstractRightContraction{S} end
struct SphericalCSRightContraction{E1, E2, E3} <: RightContraction{E1, E2, E3, SphericalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    Ψ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
RightContraction{SphericalCS}(r, θ, Ψ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        SphericalCSRightContraction(r, θ, Ψ)
    end
(e::SphericalCSRightContraction)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type BasisVectors{E1, E2, E3, S} <: AbstractBasisVectors{S} end
struct SphericalCSBasisVectors{E1, E2, E3} <: BasisVectors{E1, E2, E3, SphericalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    Ψ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
BasisVectors{SphericalCS}(r, θ, Ψ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        SphericalCSBasisVectors(r, θ, Ψ)
    end
(e::SphericalCSBasisVectors)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type UnitBasisVectors{E1, E2, E3, S} <: AbstractUnitBasisVectors{S} end
struct SphericalCSUnitBasisVectors{E1, E2, E3} <: UnitBasisVectors{E1, E2, E3, SphericalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    Ψ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
UnitBasisVectors{SphericalCS}(r, θ, Ψ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        SphericalCSUnitBasisVectors(r, θ, Ψ)
    end
(e::SphericalCSUnitBasisVectors)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type DyadicTensor{E1, E2, E3, S} <: AbstractDyadicTensor{S} end
struct SphericalCSDyadicTensor{E1, E2, E3} <: DyadicTensor{E1, E2, E3, SphericalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    Ψ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
DyadicTensor{SphericalCS}(r, θ, Ψ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        SphericalCSDyadicTensor(r, θ, Ψ)
    end
(e::SphericalCSDyadicTensor)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type DyadicTensorComponent{E1, E2, E3, S} <: AbstractDyadicTensorComponent{S} end
struct SphericalCSDyadicTensorComponent{E1, E2, E3} <: DyadicTensorComponent{E1, E2, E3, SphericalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    Ψ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
DyadicTensorComponent{SphericalCS}(r, θ, Ψ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        SphericalCSDyadicTensorComponent(r, θ, Ψ)
    end
(e::SphericalCSDyadicTensorComponent)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type BasisChangeComponent{E1, E2, E3, S} <: AbstractBasisChangeComponent{S} end
struct SphericalCSBasisChangeComponent{E1, E2, E3} <: BasisChangeComponent{E1, E2, E3, SphericalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    Ψ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
BasisChangeComponent{SphericalCS}(r, θ, Ψ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        SphericalCSBasisChangeComponent(r, θ, Ψ)
    end
(e::SphericalCSBasisChangeComponent)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type MetricTensorComponent{E1, E2, E3, S} <: AbstractMetricTensorComponent{S} end
struct SphericalCSMetricTensorComponent{E1, E2, E3} <: MetricTensorComponent{E1, E2, E3, SphericalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    Ψ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
MetricTensorComponent{SphericalCS}(r, θ, Ψ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        SphericalCSMetricTensorComponent(r, θ, Ψ)
    end
(e::SphericalCSMetricTensorComponent)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type TensorComponent{E1, E2, E3, S} <: AbstractTensorComponent{S} end
struct SphericalCSTensorComponent{E1, E2, E3} <: TensorComponent{E1, E2, E3, SphericalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    Ψ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
TensorComponent{SphericalCS}(r, θ, Ψ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        SphericalCSTensorComponent(r, θ, Ψ)
    end
(e::SphericalCSTensorComponent)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type MetricTensor{E1, E2, E3, S} <: AbstractMetricTensor{S} end
struct SphericalCSMetricTensor{E1, E2, E3} <: MetricTensor{E1, E2, E3, SphericalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    Ψ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
MetricTensor{SphericalCS}(r, θ, Ψ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        SphericalCSMetricTensor(r, θ, Ψ)
    end
(e::SphericalCSMetricTensor)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type Tensor{E1, E2, E3, S} <: AbstractTensor{S} end
struct SphericalCSTensor{E1, E2, E3} <: Tensor{E1, E2, E3, SphericalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    Ψ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
Tensor{SphericalCS}(r, θ, Ψ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        SphericalCSTensor(r, θ, Ψ)
    end
(e::SphericalCSTensor)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type DiagonalTensor{E1, E2, E3, S} <: AbstractDiagonalTensor{S} end
struct SphericalCSDiagonalTensor{E1, E2, E3} <: DiagonalTensor{E1, E2, E3, SphericalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    Ψ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
DiagonalTensor{SphericalCS}(r, θ, Ψ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        SphericalCSDiagonalTensor(r, θ, Ψ)
    end
(e::SphericalCSDiagonalTensor)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
struct SphericalCSComponentOperator{C1, C2, C3, O} <: (CoordinatesSystems.ComponentOperator){C1, C2, C3, O, SphericalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::C1
    θ::C2
    Ψ::C3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
(ComponentOperator{SphericalCS, O}(v1::V1, v2::V2, v3::V3) where {O, V1, V2, V3}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:234 =#
        SphericalCSComponentOperator{O}(v1, v2, v3)
    end
(SphericalCSComponentOperator{O}(v1::V1, v2::V2, v3::V3) where {O, V1, V2, V3}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:235 =#
        SphericalCSComponentOperator{V1, V2, V3, O}(v1, v2, v3)
    end
struct ToroidalCS <: CoordinateSystem
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::RadialComponent
    θ::PoloidalComponent
    ϕ::ToroidalComponent
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
export ToroidalCS
ToroidalCS() = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:192 =#
        ToroidalCS((T() for T = fieldtypes(ToroidalCS))...)
    end
((c::RadialComponent)(v::AbstractComponentVector{ToroidalCS}) where {E1, E2, E3}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:194 =#
        getfield(v, 1)
    end
((c::PoloidalComponent)(v::AbstractComponentVector{ToroidalCS}) where {E1, E2, E3}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:194 =#
        getfield(v, 2)
    end
((c::ToroidalComponent)(v::AbstractComponentVector{ToroidalCS}) where {E1, E2, E3}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:194 =#
        getfield(v, 3)
    end
((c::RadialCoordinate)(v::AbstractComponentVector{ToroidalCS}) where {E1, E2, E3}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:197 =#
        getfield(v, 1)
    end
((c::PoloidalCoordinate)(v::AbstractComponentVector{ToroidalCS}) where {E1, E2, E3}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:197 =#
        getfield(v, 2)
    end
((c::ToroidalCoordinate)(v::AbstractComponentVector{ToroidalCS}) where {E1, E2, E3}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:197 =#
        getfield(v, 3)
    end
abstract type PhysicsComponentVector{E1, E2, E3, S} <: AbstractPhysicsComponentVector{S} end
struct ToroidalCSPhysicsComponentVector{E1, E2, E3} <: PhysicsComponentVector{E1, E2, E3, ToroidalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
PhysicsComponentVector{ToroidalCS}(r, θ, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        ToroidalCSPhysicsComponentVector(r, θ, ϕ)
    end
(e::ToroidalCSPhysicsComponentVector)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type PhysicsComponentVectors{E1, E2, E3, S} <: AbstractPhysicsComponentVectors{S} end
struct ToroidalCSPhysicsComponentVectors{E1, E2, E3} <: PhysicsComponentVectors{E1, E2, E3, ToroidalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
PhysicsComponentVectors{ToroidalCS}(r, θ, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        ToroidalCSPhysicsComponentVectors(r, θ, ϕ)
    end
(e::ToroidalCSPhysicsComponentVectors)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type PhysicsCoordinates{E1, E2, E3, S} <: AbstractPhysicsCoordinates{S} end
struct ToroidalCSPhysicsCoordinates{E1, E2, E3} <: PhysicsCoordinates{E1, E2, E3, ToroidalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
PhysicsCoordinates{ToroidalCS}(r, θ, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        ToroidalCSPhysicsCoordinates(r, θ, ϕ)
    end
(e::ToroidalCSPhysicsCoordinates)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type NormalizationMetric{E1, E2, E3, S} <: AbstractNormalizationMetric{S} end
struct ToroidalCSNormalizationMetric{E1, E2, E3} <: NormalizationMetric{E1, E2, E3, ToroidalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
NormalizationMetric{ToroidalCS}(r, θ, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        ToroidalCSNormalizationMetric(r, θ, ϕ)
    end
(e::ToroidalCSNormalizationMetric)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type BasisVector{E1, E2, E3, S} <: AbstractBasisVector{S} end
struct ToroidalCSBasisVector{E1, E2, E3} <: BasisVector{E1, E2, E3, ToroidalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
BasisVector{ToroidalCS}(r, θ, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        ToroidalCSBasisVector(r, θ, ϕ)
    end
(e::ToroidalCSBasisVector)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type UnitBasisVector{E1, E2, E3, S} <: AbstractUnitBasisVector{S} end
struct ToroidalCSUnitBasisVector{E1, E2, E3} <: UnitBasisVector{E1, E2, E3, ToroidalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
UnitBasisVector{ToroidalCS}(r, θ, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        ToroidalCSUnitBasisVector(r, θ, ϕ)
    end
(e::ToroidalCSUnitBasisVector)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type RightContraction{E1, E2, E3, S} <: AbstractRightContraction{S} end
struct ToroidalCSRightContraction{E1, E2, E3} <: RightContraction{E1, E2, E3, ToroidalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
RightContraction{ToroidalCS}(r, θ, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        ToroidalCSRightContraction(r, θ, ϕ)
    end
(e::ToroidalCSRightContraction)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type BasisVectors{E1, E2, E3, S} <: AbstractBasisVectors{S} end
struct ToroidalCSBasisVectors{E1, E2, E3} <: BasisVectors{E1, E2, E3, ToroidalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
BasisVectors{ToroidalCS}(r, θ, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        ToroidalCSBasisVectors(r, θ, ϕ)
    end
(e::ToroidalCSBasisVectors)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type UnitBasisVectors{E1, E2, E3, S} <: AbstractUnitBasisVectors{S} end
struct ToroidalCSUnitBasisVectors{E1, E2, E3} <: UnitBasisVectors{E1, E2, E3, ToroidalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
UnitBasisVectors{ToroidalCS}(r, θ, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        ToroidalCSUnitBasisVectors(r, θ, ϕ)
    end
(e::ToroidalCSUnitBasisVectors)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type DyadicTensor{E1, E2, E3, S} <: AbstractDyadicTensor{S} end
struct ToroidalCSDyadicTensor{E1, E2, E3} <: DyadicTensor{E1, E2, E3, ToroidalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
DyadicTensor{ToroidalCS}(r, θ, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        ToroidalCSDyadicTensor(r, θ, ϕ)
    end
(e::ToroidalCSDyadicTensor)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type DyadicTensorComponent{E1, E2, E3, S} <: AbstractDyadicTensorComponent{S} end
struct ToroidalCSDyadicTensorComponent{E1, E2, E3} <: DyadicTensorComponent{E1, E2, E3, ToroidalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
DyadicTensorComponent{ToroidalCS}(r, θ, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        ToroidalCSDyadicTensorComponent(r, θ, ϕ)
    end
(e::ToroidalCSDyadicTensorComponent)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type BasisChangeComponent{E1, E2, E3, S} <: AbstractBasisChangeComponent{S} end
struct ToroidalCSBasisChangeComponent{E1, E2, E3} <: BasisChangeComponent{E1, E2, E3, ToroidalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
BasisChangeComponent{ToroidalCS}(r, θ, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        ToroidalCSBasisChangeComponent(r, θ, ϕ)
    end
(e::ToroidalCSBasisChangeComponent)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type MetricTensorComponent{E1, E2, E3, S} <: AbstractMetricTensorComponent{S} end
struct ToroidalCSMetricTensorComponent{E1, E2, E3} <: MetricTensorComponent{E1, E2, E3, ToroidalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
MetricTensorComponent{ToroidalCS}(r, θ, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        ToroidalCSMetricTensorComponent(r, θ, ϕ)
    end
(e::ToroidalCSMetricTensorComponent)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type TensorComponent{E1, E2, E3, S} <: AbstractTensorComponent{S} end
struct ToroidalCSTensorComponent{E1, E2, E3} <: TensorComponent{E1, E2, E3, ToroidalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
TensorComponent{ToroidalCS}(r, θ, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        ToroidalCSTensorComponent(r, θ, ϕ)
    end
(e::ToroidalCSTensorComponent)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type MetricTensor{E1, E2, E3, S} <: AbstractMetricTensor{S} end
struct ToroidalCSMetricTensor{E1, E2, E3} <: MetricTensor{E1, E2, E3, ToroidalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
MetricTensor{ToroidalCS}(r, θ, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        ToroidalCSMetricTensor(r, θ, ϕ)
    end
(e::ToroidalCSMetricTensor)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type Tensor{E1, E2, E3, S} <: AbstractTensor{S} end
struct ToroidalCSTensor{E1, E2, E3} <: Tensor{E1, E2, E3, ToroidalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
Tensor{ToroidalCS}(r, θ, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        ToroidalCSTensor(r, θ, ϕ)
    end
(e::ToroidalCSTensor)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type DiagonalTensor{E1, E2, E3, S} <: AbstractDiagonalTensor{S} end
struct ToroidalCSDiagonalTensor{E1, E2, E3} <: DiagonalTensor{E1, E2, E3, ToroidalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
DiagonalTensor{ToroidalCS}(r, θ, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        ToroidalCSDiagonalTensor(r, θ, ϕ)
    end
(e::ToroidalCSDiagonalTensor)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
struct ToroidalCSComponentOperator{C1, C2, C3, O} <: (CoordinatesSystems.ComponentOperator){C1, C2, C3, O, ToroidalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::C1
    θ::C2
    ϕ::C3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
(ComponentOperator{ToroidalCS, O}(v1::V1, v2::V2, v3::V3) where {O, V1, V2, V3}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:234 =#
        ToroidalCSComponentOperator{O}(v1, v2, v3)
    end
(ToroidalCSComponentOperator{O}(v1::V1, v2::V2, v3::V3) where {O, V1, V2, V3}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:235 =#
        ToroidalCSComponentOperator{V1, V2, V3, O}(v1, v2, v3)
    end
struct PseudoToroidalCS <: CoordinateSystem
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    R::RadialComponent
    Z::VerticalComponent
    ϕ::ToroidalComponent
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
export PseudoToroidalCS
PseudoToroidalCS() = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:192 =#
        PseudoToroidalCS((T() for T = fieldtypes(PseudoToroidalCS))...)
    end
((c::RadialComponent)(v::AbstractComponentVector{PseudoToroidalCS}) where {E1, E2, E3}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:194 =#
        getfield(v, 1)
    end
((c::VerticalComponent)(v::AbstractComponentVector{PseudoToroidalCS}) where {E1, E2, E3}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:194 =#
        getfield(v, 2)
    end
((c::ToroidalComponent)(v::AbstractComponentVector{PseudoToroidalCS}) where {E1, E2, E3}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:194 =#
        getfield(v, 3)
    end
((c::RadialCoordinate)(v::AbstractComponentVector{PseudoToroidalCS}) where {E1, E2, E3}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:197 =#
        getfield(v, 1)
    end
((c::VerticalCoordinate)(v::AbstractComponentVector{PseudoToroidalCS}) where {E1, E2, E3}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:197 =#
        getfield(v, 2)
    end
((c::ToroidalCoordinate)(v::AbstractComponentVector{PseudoToroidalCS}) where {E1, E2, E3}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:197 =#
        getfield(v, 3)
    end
abstract type PhysicsComponentVector{E1, E2, E3, S} <: AbstractPhysicsComponentVector{S} end
struct PseudoToroidalCSPhysicsComponentVector{E1, E2, E3} <: PhysicsComponentVector{E1, E2, E3, PseudoToroidalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    R::E1
    Z::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
PhysicsComponentVector{PseudoToroidalCS}(R, Z, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        PseudoToroidalCSPhysicsComponentVector(R, Z, ϕ)
    end
(e::PseudoToroidalCSPhysicsComponentVector)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type PhysicsComponentVectors{E1, E2, E3, S} <: AbstractPhysicsComponentVectors{S} end
struct PseudoToroidalCSPhysicsComponentVectors{E1, E2, E3} <: PhysicsComponentVectors{E1, E2, E3, PseudoToroidalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    R::E1
    Z::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
PhysicsComponentVectors{PseudoToroidalCS}(R, Z, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        PseudoToroidalCSPhysicsComponentVectors(R, Z, ϕ)
    end
(e::PseudoToroidalCSPhysicsComponentVectors)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type PhysicsCoordinates{E1, E2, E3, S} <: AbstractPhysicsCoordinates{S} end
struct PseudoToroidalCSPhysicsCoordinates{E1, E2, E3} <: PhysicsCoordinates{E1, E2, E3, PseudoToroidalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    R::E1
    Z::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
PhysicsCoordinates{PseudoToroidalCS}(R, Z, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        PseudoToroidalCSPhysicsCoordinates(R, Z, ϕ)
    end
(e::PseudoToroidalCSPhysicsCoordinates)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type NormalizationMetric{E1, E2, E3, S} <: AbstractNormalizationMetric{S} end
struct PseudoToroidalCSNormalizationMetric{E1, E2, E3} <: NormalizationMetric{E1, E2, E3, PseudoToroidalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    R::E1
    Z::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
NormalizationMetric{PseudoToroidalCS}(R, Z, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        PseudoToroidalCSNormalizationMetric(R, Z, ϕ)
    end
(e::PseudoToroidalCSNormalizationMetric)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type BasisVector{E1, E2, E3, S} <: AbstractBasisVector{S} end
struct PseudoToroidalCSBasisVector{E1, E2, E3} <: BasisVector{E1, E2, E3, PseudoToroidalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    R::E1
    Z::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
BasisVector{PseudoToroidalCS}(R, Z, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        PseudoToroidalCSBasisVector(R, Z, ϕ)
    end
(e::PseudoToroidalCSBasisVector)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type UnitBasisVector{E1, E2, E3, S} <: AbstractUnitBasisVector{S} end
struct PseudoToroidalCSUnitBasisVector{E1, E2, E3} <: UnitBasisVector{E1, E2, E3, PseudoToroidalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    R::E1
    Z::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
UnitBasisVector{PseudoToroidalCS}(R, Z, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        PseudoToroidalCSUnitBasisVector(R, Z, ϕ)
    end
(e::PseudoToroidalCSUnitBasisVector)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type RightContraction{E1, E2, E3, S} <: AbstractRightContraction{S} end
struct PseudoToroidalCSRightContraction{E1, E2, E3} <: RightContraction{E1, E2, E3, PseudoToroidalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    R::E1
    Z::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
RightContraction{PseudoToroidalCS}(R, Z, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        PseudoToroidalCSRightContraction(R, Z, ϕ)
    end
(e::PseudoToroidalCSRightContraction)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type BasisVectors{E1, E2, E3, S} <: AbstractBasisVectors{S} end
struct PseudoToroidalCSBasisVectors{E1, E2, E3} <: BasisVectors{E1, E2, E3, PseudoToroidalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    R::E1
    Z::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
BasisVectors{PseudoToroidalCS}(R, Z, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        PseudoToroidalCSBasisVectors(R, Z, ϕ)
    end
(e::PseudoToroidalCSBasisVectors)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type UnitBasisVectors{E1, E2, E3, S} <: AbstractUnitBasisVectors{S} end
struct PseudoToroidalCSUnitBasisVectors{E1, E2, E3} <: UnitBasisVectors{E1, E2, E3, PseudoToroidalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    R::E1
    Z::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
UnitBasisVectors{PseudoToroidalCS}(R, Z, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        PseudoToroidalCSUnitBasisVectors(R, Z, ϕ)
    end
(e::PseudoToroidalCSUnitBasisVectors)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type DyadicTensor{E1, E2, E3, S} <: AbstractDyadicTensor{S} end
struct PseudoToroidalCSDyadicTensor{E1, E2, E3} <: DyadicTensor{E1, E2, E3, PseudoToroidalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    R::E1
    Z::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
DyadicTensor{PseudoToroidalCS}(R, Z, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        PseudoToroidalCSDyadicTensor(R, Z, ϕ)
    end
(e::PseudoToroidalCSDyadicTensor)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type DyadicTensorComponent{E1, E2, E3, S} <: AbstractDyadicTensorComponent{S} end
struct PseudoToroidalCSDyadicTensorComponent{E1, E2, E3} <: DyadicTensorComponent{E1, E2, E3, PseudoToroidalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    R::E1
    Z::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
DyadicTensorComponent{PseudoToroidalCS}(R, Z, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        PseudoToroidalCSDyadicTensorComponent(R, Z, ϕ)
    end
(e::PseudoToroidalCSDyadicTensorComponent)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type BasisChangeComponent{E1, E2, E3, S} <: AbstractBasisChangeComponent{S} end
struct PseudoToroidalCSBasisChangeComponent{E1, E2, E3} <: BasisChangeComponent{E1, E2, E3, PseudoToroidalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    R::E1
    Z::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
BasisChangeComponent{PseudoToroidalCS}(R, Z, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        PseudoToroidalCSBasisChangeComponent(R, Z, ϕ)
    end
(e::PseudoToroidalCSBasisChangeComponent)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type MetricTensorComponent{E1, E2, E3, S} <: AbstractMetricTensorComponent{S} end
struct PseudoToroidalCSMetricTensorComponent{E1, E2, E3} <: MetricTensorComponent{E1, E2, E3, PseudoToroidalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    R::E1
    Z::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
MetricTensorComponent{PseudoToroidalCS}(R, Z, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        PseudoToroidalCSMetricTensorComponent(R, Z, ϕ)
    end
(e::PseudoToroidalCSMetricTensorComponent)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type TensorComponent{E1, E2, E3, S} <: AbstractTensorComponent{S} end
struct PseudoToroidalCSTensorComponent{E1, E2, E3} <: TensorComponent{E1, E2, E3, PseudoToroidalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    R::E1
    Z::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
TensorComponent{PseudoToroidalCS}(R, Z, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        PseudoToroidalCSTensorComponent(R, Z, ϕ)
    end
(e::PseudoToroidalCSTensorComponent)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type MetricTensor{E1, E2, E3, S} <: AbstractMetricTensor{S} end
struct PseudoToroidalCSMetricTensor{E1, E2, E3} <: MetricTensor{E1, E2, E3, PseudoToroidalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    R::E1
    Z::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
MetricTensor{PseudoToroidalCS}(R, Z, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        PseudoToroidalCSMetricTensor(R, Z, ϕ)
    end
(e::PseudoToroidalCSMetricTensor)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type Tensor{E1, E2, E3, S} <: AbstractTensor{S} end
struct PseudoToroidalCSTensor{E1, E2, E3} <: Tensor{E1, E2, E3, PseudoToroidalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    R::E1
    Z::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
Tensor{PseudoToroidalCS}(R, Z, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        PseudoToroidalCSTensor(R, Z, ϕ)
    end
(e::PseudoToroidalCSTensor)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
abstract type DiagonalTensor{E1, E2, E3, S} <: AbstractDiagonalTensor{S} end
struct PseudoToroidalCSDiagonalTensor{E1, E2, E3} <: DiagonalTensor{E1, E2, E3, PseudoToroidalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    R::E1
    Z::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
DiagonalTensor{PseudoToroidalCS}(R, Z, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:96 =#
        PseudoToroidalCSDiagonalTensor(R, Z, ϕ)
    end
(e::PseudoToroidalCSDiagonalTensor)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:97 =#
        compute!(e, a, b, c)
    end
struct PseudoToroidalCSComponentOperator{C1, C2, C3, O} <: (CoordinatesSystems.ComponentOperator){C1, C2, C3, O, PseudoToroidalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    R::C1
    Z::C2
    ϕ::C3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
(ComponentOperator{PseudoToroidalCS, O}(v1::V1, v2::V2, v3::V3) where {O, V1, V2, V3}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:234 =#
        PseudoToroidalCSComponentOperator{O}(v1, v2, v3)
    end
(PseudoToroidalCSComponentOperator{O}(v1::V1, v2::V2, v3::V3) where {O, V1, V2, V3}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:235 =#
        PseudoToroidalCSComponentOperator{V1, V2, V3, O}(v1, v2, v3)
    end
begin
    struct CylindricalCS2CylindricalCSBasisChangeTensor{G1 <: CylindricalCSBasisChangeComponent, G2 <: CylindricalCSBasisChangeComponent, G3 <: CylindricalCSBasisChangeComponent} <: BasisChangeTensor{G1, G2, G3, CylindricalCS, CylindricalCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        r::G1
        θ::G2
        z::G3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    BasisChangeTensor{CylindricalCS, CylindricalCS}(g1, g2, g3) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:339 =#
            CylindricalCS2CylindricalCSBasisChangeTensor(g1, g2, g3)
        end
end
begin
    struct ParallelFieldAlignedCS2CylindricalCSBasisChangeTensor{G1 <: ParallelFieldAlignedCSBasisChangeComponent, G2 <: ParallelFieldAlignedCSBasisChangeComponent, G3 <: ParallelFieldAlignedCSBasisChangeComponent} <: BasisChangeTensor{G1, G2, G3, ParallelFieldAlignedCS, CylindricalCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        r::G1
        θ::G2
        z::G3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    BasisChangeTensor{ParallelFieldAlignedCS, CylindricalCS}(g1, g2, g3) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:339 =#
            ParallelFieldAlignedCS2CylindricalCSBasisChangeTensor(g1, g2, g3)
        end
end
begin
    struct SphericalCS2CylindricalCSBasisChangeTensor{G1 <: SphericalCSBasisChangeComponent, G2 <: SphericalCSBasisChangeComponent, G3 <: SphericalCSBasisChangeComponent} <: BasisChangeTensor{G1, G2, G3, SphericalCS, CylindricalCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        r::G1
        θ::G2
        z::G3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    BasisChangeTensor{SphericalCS, CylindricalCS}(g1, g2, g3) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:339 =#
            SphericalCS2CylindricalCSBasisChangeTensor(g1, g2, g3)
        end
end
begin
    struct PoloidalFieldAlignedCS2CylindricalCSBasisChangeTensor{G1 <: PoloidalFieldAlignedCSBasisChangeComponent, G2 <: PoloidalFieldAlignedCSBasisChangeComponent, G3 <: PoloidalFieldAlignedCSBasisChangeComponent} <: BasisChangeTensor{G1, G2, G3, PoloidalFieldAlignedCS, CylindricalCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        r::G1
        θ::G2
        z::G3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    BasisChangeTensor{PoloidalFieldAlignedCS, CylindricalCS}(g1, g2, g3) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:339 =#
            PoloidalFieldAlignedCS2CylindricalCSBasisChangeTensor(g1, g2, g3)
        end
end
begin
    struct PseudoToroidalCS2CylindricalCSBasisChangeTensor{G1 <: PseudoToroidalCSBasisChangeComponent, G2 <: PseudoToroidalCSBasisChangeComponent, G3 <: PseudoToroidalCSBasisChangeComponent} <: BasisChangeTensor{G1, G2, G3, PseudoToroidalCS, CylindricalCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        r::G1
        θ::G2
        z::G3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    BasisChangeTensor{PseudoToroidalCS, CylindricalCS}(g1, g2, g3) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:339 =#
            PseudoToroidalCS2CylindricalCSBasisChangeTensor(g1, g2, g3)
        end
end
begin
    struct ToroidalCS2CylindricalCSBasisChangeTensor{G1 <: ToroidalCSBasisChangeComponent, G2 <: ToroidalCSBasisChangeComponent, G3 <: ToroidalCSBasisChangeComponent} <: BasisChangeTensor{G1, G2, G3, ToroidalCS, CylindricalCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        r::G1
        θ::G2
        z::G3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    BasisChangeTensor{ToroidalCS, CylindricalCS}(g1, g2, g3) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:339 =#
            ToroidalCS2CylindricalCSBasisChangeTensor(g1, g2, g3)
        end
end
begin
    struct CartesianCS2CylindricalCSBasisChangeTensor{G1 <: CartesianCSBasisChangeComponent, G2 <: CartesianCSBasisChangeComponent, G3 <: CartesianCSBasisChangeComponent} <: BasisChangeTensor{G1, G2, G3, CartesianCS, CylindricalCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        r::G1
        θ::G2
        z::G3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    BasisChangeTensor{CartesianCS, CylindricalCS}(g1, g2, g3) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:339 =#
            CartesianCS2CylindricalCSBasisChangeTensor(g1, g2, g3)
        end
end
begin
    struct CylindricalCS2ParallelFieldAlignedCSBasisChangeTensor{G1 <: CylindricalCSBasisChangeComponent, G2 <: CylindricalCSBasisChangeComponent, G3 <: CylindricalCSBasisChangeComponent} <: BasisChangeTensor{G1, G2, G3, CylindricalCS, ParallelFieldAlignedCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        ǁ::G1
        ⊥::G2
        ʌ::G3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    BasisChangeTensor{CylindricalCS, ParallelFieldAlignedCS}(g1, g2, g3) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:339 =#
            CylindricalCS2ParallelFieldAlignedCSBasisChangeTensor(g1, g2, g3)
        end
end
begin
    struct ParallelFieldAlignedCS2ParallelFieldAlignedCSBasisChangeTensor{G1 <: ParallelFieldAlignedCSBasisChangeComponent, G2 <: ParallelFieldAlignedCSBasisChangeComponent, G3 <: ParallelFieldAlignedCSBasisChangeComponent} <: BasisChangeTensor{G1, G2, G3, ParallelFieldAlignedCS, ParallelFieldAlignedCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        ǁ::G1
        ⊥::G2
        ʌ::G3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    BasisChangeTensor{ParallelFieldAlignedCS, ParallelFieldAlignedCS}(g1, g2, g3) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:339 =#
            ParallelFieldAlignedCS2ParallelFieldAlignedCSBasisChangeTensor(g1, g2, g3)
        end
end
begin
    struct SphericalCS2ParallelFieldAlignedCSBasisChangeTensor{G1 <: SphericalCSBasisChangeComponent, G2 <: SphericalCSBasisChangeComponent, G3 <: SphericalCSBasisChangeComponent} <: BasisChangeTensor{G1, G2, G3, SphericalCS, ParallelFieldAlignedCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        ǁ::G1
        ⊥::G2
        ʌ::G3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    BasisChangeTensor{SphericalCS, ParallelFieldAlignedCS}(g1, g2, g3) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:339 =#
            SphericalCS2ParallelFieldAlignedCSBasisChangeTensor(g1, g2, g3)
        end
end
begin
    struct PoloidalFieldAlignedCS2ParallelFieldAlignedCSBasisChangeTensor{G1 <: PoloidalFieldAlignedCSBasisChangeComponent, G2 <: PoloidalFieldAlignedCSBasisChangeComponent, G3 <: PoloidalFieldAlignedCSBasisChangeComponent} <: BasisChangeTensor{G1, G2, G3, PoloidalFieldAlignedCS, ParallelFieldAlignedCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        ǁ::G1
        ⊥::G2
        ʌ::G3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    BasisChangeTensor{PoloidalFieldAlignedCS, ParallelFieldAlignedCS}(g1, g2, g3) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:339 =#
            PoloidalFieldAlignedCS2ParallelFieldAlignedCSBasisChangeTensor(g1, g2, g3)
        end
end
begin
    struct PseudoToroidalCS2ParallelFieldAlignedCSBasisChangeTensor{G1 <: PseudoToroidalCSBasisChangeComponent, G2 <: PseudoToroidalCSBasisChangeComponent, G3 <: PseudoToroidalCSBasisChangeComponent} <: BasisChangeTensor{G1, G2, G3, PseudoToroidalCS, ParallelFieldAlignedCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        ǁ::G1
        ⊥::G2
        ʌ::G3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    BasisChangeTensor{PseudoToroidalCS, ParallelFieldAlignedCS}(g1, g2, g3) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:339 =#
            PseudoToroidalCS2ParallelFieldAlignedCSBasisChangeTensor(g1, g2, g3)
        end
end
begin
    struct ToroidalCS2ParallelFieldAlignedCSBasisChangeTensor{G1 <: ToroidalCSBasisChangeComponent, G2 <: ToroidalCSBasisChangeComponent, G3 <: ToroidalCSBasisChangeComponent} <: BasisChangeTensor{G1, G2, G3, ToroidalCS, ParallelFieldAlignedCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        ǁ::G1
        ⊥::G2
        ʌ::G3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    BasisChangeTensor{ToroidalCS, ParallelFieldAlignedCS}(g1, g2, g3) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:339 =#
            ToroidalCS2ParallelFieldAlignedCSBasisChangeTensor(g1, g2, g3)
        end
end
begin
    struct CartesianCS2ParallelFieldAlignedCSBasisChangeTensor{G1 <: CartesianCSBasisChangeComponent, G2 <: CartesianCSBasisChangeComponent, G3 <: CartesianCSBasisChangeComponent} <: BasisChangeTensor{G1, G2, G3, CartesianCS, ParallelFieldAlignedCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        ǁ::G1
        ⊥::G2
        ʌ::G3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    BasisChangeTensor{CartesianCS, ParallelFieldAlignedCS}(g1, g2, g3) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:339 =#
            CartesianCS2ParallelFieldAlignedCSBasisChangeTensor(g1, g2, g3)
        end
end
begin
    struct CylindricalCS2SphericalCSBasisChangeTensor{G1 <: CylindricalCSBasisChangeComponent, G2 <: CylindricalCSBasisChangeComponent, G3 <: CylindricalCSBasisChangeComponent} <: BasisChangeTensor{G1, G2, G3, CylindricalCS, SphericalCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        r::G1
        θ::G2
        Ψ::G3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    BasisChangeTensor{CylindricalCS, SphericalCS}(g1, g2, g3) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:339 =#
            CylindricalCS2SphericalCSBasisChangeTensor(g1, g2, g3)
        end
end
begin
    struct ParallelFieldAlignedCS2SphericalCSBasisChangeTensor{G1 <: ParallelFieldAlignedCSBasisChangeComponent, G2 <: ParallelFieldAlignedCSBasisChangeComponent, G3 <: ParallelFieldAlignedCSBasisChangeComponent} <: BasisChangeTensor{G1, G2, G3, ParallelFieldAlignedCS, SphericalCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        r::G1
        θ::G2
        Ψ::G3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    BasisChangeTensor{ParallelFieldAlignedCS, SphericalCS}(g1, g2, g3) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:339 =#
            ParallelFieldAlignedCS2SphericalCSBasisChangeTensor(g1, g2, g3)
        end
end
begin
    struct SphericalCS2SphericalCSBasisChangeTensor{G1 <: SphericalCSBasisChangeComponent, G2 <: SphericalCSBasisChangeComponent, G3 <: SphericalCSBasisChangeComponent} <: BasisChangeTensor{G1, G2, G3, SphericalCS, SphericalCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        r::G1
        θ::G2
        Ψ::G3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    BasisChangeTensor{SphericalCS, SphericalCS}(g1, g2, g3) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:339 =#
            SphericalCS2SphericalCSBasisChangeTensor(g1, g2, g3)
        end
end
begin
    struct PoloidalFieldAlignedCS2SphericalCSBasisChangeTensor{G1 <: PoloidalFieldAlignedCSBasisChangeComponent, G2 <: PoloidalFieldAlignedCSBasisChangeComponent, G3 <: PoloidalFieldAlignedCSBasisChangeComponent} <: BasisChangeTensor{G1, G2, G3, PoloidalFieldAlignedCS, SphericalCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        r::G1
        θ::G2
        Ψ::G3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    BasisChangeTensor{PoloidalFieldAlignedCS, SphericalCS}(g1, g2, g3) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:339 =#
            PoloidalFieldAlignedCS2SphericalCSBasisChangeTensor(g1, g2, g3)
        end
end
begin
    struct PseudoToroidalCS2SphericalCSBasisChangeTensor{G1 <: PseudoToroidalCSBasisChangeComponent, G2 <: PseudoToroidalCSBasisChangeComponent, G3 <: PseudoToroidalCSBasisChangeComponent} <: BasisChangeTensor{G1, G2, G3, PseudoToroidalCS, SphericalCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        r::G1
        θ::G2
        Ψ::G3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    BasisChangeTensor{PseudoToroidalCS, SphericalCS}(g1, g2, g3) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:339 =#
            PseudoToroidalCS2SphericalCSBasisChangeTensor(g1, g2, g3)
        end
end
begin
    struct ToroidalCS2SphericalCSBasisChangeTensor{G1 <: ToroidalCSBasisChangeComponent, G2 <: ToroidalCSBasisChangeComponent, G3 <: ToroidalCSBasisChangeComponent} <: BasisChangeTensor{G1, G2, G3, ToroidalCS, SphericalCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        r::G1
        θ::G2
        Ψ::G3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    BasisChangeTensor{ToroidalCS, SphericalCS}(g1, g2, g3) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:339 =#
            ToroidalCS2SphericalCSBasisChangeTensor(g1, g2, g3)
        end
end
begin
    struct CartesianCS2SphericalCSBasisChangeTensor{G1 <: CartesianCSBasisChangeComponent, G2 <: CartesianCSBasisChangeComponent, G3 <: CartesianCSBasisChangeComponent} <: BasisChangeTensor{G1, G2, G3, CartesianCS, SphericalCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        r::G1
        θ::G2
        Ψ::G3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    BasisChangeTensor{CartesianCS, SphericalCS}(g1, g2, g3) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:339 =#
            CartesianCS2SphericalCSBasisChangeTensor(g1, g2, g3)
        end
end
begin
    struct CylindricalCS2PoloidalFieldAlignedCSBasisChangeTensor{G1 <: CylindricalCSBasisChangeComponent, G2 <: CylindricalCSBasisChangeComponent, G3 <: CylindricalCSBasisChangeComponent} <: BasisChangeTensor{G1, G2, G3, CylindricalCS, PoloidalFieldAlignedCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        x::G1
        y::G2
        ϕ::G3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    BasisChangeTensor{CylindricalCS, PoloidalFieldAlignedCS}(g1, g2, g3) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:339 =#
            CylindricalCS2PoloidalFieldAlignedCSBasisChangeTensor(g1, g2, g3)
        end
end
begin
    struct ParallelFieldAlignedCS2PoloidalFieldAlignedCSBasisChangeTensor{G1 <: ParallelFieldAlignedCSBasisChangeComponent, G2 <: ParallelFieldAlignedCSBasisChangeComponent, G3 <: ParallelFieldAlignedCSBasisChangeComponent} <: BasisChangeTensor{G1, G2, G3, ParallelFieldAlignedCS, PoloidalFieldAlignedCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        x::G1
        y::G2
        ϕ::G3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    BasisChangeTensor{ParallelFieldAlignedCS, PoloidalFieldAlignedCS}(g1, g2, g3) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:339 =#
            ParallelFieldAlignedCS2PoloidalFieldAlignedCSBasisChangeTensor(g1, g2, g3)
        end
end
begin
    struct SphericalCS2PoloidalFieldAlignedCSBasisChangeTensor{G1 <: SphericalCSBasisChangeComponent, G2 <: SphericalCSBasisChangeComponent, G3 <: SphericalCSBasisChangeComponent} <: BasisChangeTensor{G1, G2, G3, SphericalCS, PoloidalFieldAlignedCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        x::G1
        y::G2
        ϕ::G3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    BasisChangeTensor{SphericalCS, PoloidalFieldAlignedCS}(g1, g2, g3) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:339 =#
            SphericalCS2PoloidalFieldAlignedCSBasisChangeTensor(g1, g2, g3)
        end
end
begin
    struct PoloidalFieldAlignedCS2PoloidalFieldAlignedCSBasisChangeTensor{G1 <: PoloidalFieldAlignedCSBasisChangeComponent, G2 <: PoloidalFieldAlignedCSBasisChangeComponent, G3 <: PoloidalFieldAlignedCSBasisChangeComponent} <: BasisChangeTensor{G1, G2, G3, PoloidalFieldAlignedCS, PoloidalFieldAlignedCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        x::G1
        y::G2
        ϕ::G3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    BasisChangeTensor{PoloidalFieldAlignedCS, PoloidalFieldAlignedCS}(g1, g2, g3) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:339 =#
            PoloidalFieldAlignedCS2PoloidalFieldAlignedCSBasisChangeTensor(g1, g2, g3)
        end
end
begin
    struct PseudoToroidalCS2PoloidalFieldAlignedCSBasisChangeTensor{G1 <: PseudoToroidalCSBasisChangeComponent, G2 <: PseudoToroidalCSBasisChangeComponent, G3 <: PseudoToroidalCSBasisChangeComponent} <: BasisChangeTensor{G1, G2, G3, PseudoToroidalCS, PoloidalFieldAlignedCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        x::G1
        y::G2
        ϕ::G3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    BasisChangeTensor{PseudoToroidalCS, PoloidalFieldAlignedCS}(g1, g2, g3) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:339 =#
            PseudoToroidalCS2PoloidalFieldAlignedCSBasisChangeTensor(g1, g2, g3)
        end
end
begin
    struct ToroidalCS2PoloidalFieldAlignedCSBasisChangeTensor{G1 <: ToroidalCSBasisChangeComponent, G2 <: ToroidalCSBasisChangeComponent, G3 <: ToroidalCSBasisChangeComponent} <: BasisChangeTensor{G1, G2, G3, ToroidalCS, PoloidalFieldAlignedCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        x::G1
        y::G2
        ϕ::G3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    BasisChangeTensor{ToroidalCS, PoloidalFieldAlignedCS}(g1, g2, g3) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:339 =#
            ToroidalCS2PoloidalFieldAlignedCSBasisChangeTensor(g1, g2, g3)
        end
end
begin
    struct CartesianCS2PoloidalFieldAlignedCSBasisChangeTensor{G1 <: CartesianCSBasisChangeComponent, G2 <: CartesianCSBasisChangeComponent, G3 <: CartesianCSBasisChangeComponent} <: BasisChangeTensor{G1, G2, G3, CartesianCS, PoloidalFieldAlignedCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        x::G1
        y::G2
        ϕ::G3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    BasisChangeTensor{CartesianCS, PoloidalFieldAlignedCS}(g1, g2, g3) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:339 =#
            CartesianCS2PoloidalFieldAlignedCSBasisChangeTensor(g1, g2, g3)
        end
end
begin
    struct CylindricalCS2PseudoToroidalCSBasisChangeTensor{G1 <: CylindricalCSBasisChangeComponent, G2 <: CylindricalCSBasisChangeComponent, G3 <: CylindricalCSBasisChangeComponent} <: BasisChangeTensor{G1, G2, G3, CylindricalCS, PseudoToroidalCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        R::G1
        Z::G2
        ϕ::G3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    BasisChangeTensor{CylindricalCS, PseudoToroidalCS}(g1, g2, g3) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:339 =#
            CylindricalCS2PseudoToroidalCSBasisChangeTensor(g1, g2, g3)
        end
end
begin
    struct ParallelFieldAlignedCS2PseudoToroidalCSBasisChangeTensor{G1 <: ParallelFieldAlignedCSBasisChangeComponent, G2 <: ParallelFieldAlignedCSBasisChangeComponent, G3 <: ParallelFieldAlignedCSBasisChangeComponent} <: BasisChangeTensor{G1, G2, G3, ParallelFieldAlignedCS, PseudoToroidalCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        R::G1
        Z::G2
        ϕ::G3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    BasisChangeTensor{ParallelFieldAlignedCS, PseudoToroidalCS}(g1, g2, g3) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:339 =#
            ParallelFieldAlignedCS2PseudoToroidalCSBasisChangeTensor(g1, g2, g3)
        end
end
begin
    struct SphericalCS2PseudoToroidalCSBasisChangeTensor{G1 <: SphericalCSBasisChangeComponent, G2 <: SphericalCSBasisChangeComponent, G3 <: SphericalCSBasisChangeComponent} <: BasisChangeTensor{G1, G2, G3, SphericalCS, PseudoToroidalCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        R::G1
        Z::G2
        ϕ::G3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    BasisChangeTensor{SphericalCS, PseudoToroidalCS}(g1, g2, g3) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:339 =#
            SphericalCS2PseudoToroidalCSBasisChangeTensor(g1, g2, g3)
        end
end
begin
    struct PoloidalFieldAlignedCS2PseudoToroidalCSBasisChangeTensor{G1 <: PoloidalFieldAlignedCSBasisChangeComponent, G2 <: PoloidalFieldAlignedCSBasisChangeComponent, G3 <: PoloidalFieldAlignedCSBasisChangeComponent} <: BasisChangeTensor{G1, G2, G3, PoloidalFieldAlignedCS, PseudoToroidalCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        R::G1
        Z::G2
        ϕ::G3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    BasisChangeTensor{PoloidalFieldAlignedCS, PseudoToroidalCS}(g1, g2, g3) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:339 =#
            PoloidalFieldAlignedCS2PseudoToroidalCSBasisChangeTensor(g1, g2, g3)
        end
end
begin
    struct PseudoToroidalCS2PseudoToroidalCSBasisChangeTensor{G1 <: PseudoToroidalCSBasisChangeComponent, G2 <: PseudoToroidalCSBasisChangeComponent, G3 <: PseudoToroidalCSBasisChangeComponent} <: BasisChangeTensor{G1, G2, G3, PseudoToroidalCS, PseudoToroidalCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        R::G1
        Z::G2
        ϕ::G3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    BasisChangeTensor{PseudoToroidalCS, PseudoToroidalCS}(g1, g2, g3) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:339 =#
            PseudoToroidalCS2PseudoToroidalCSBasisChangeTensor(g1, g2, g3)
        end
end
begin
    struct ToroidalCS2PseudoToroidalCSBasisChangeTensor{G1 <: ToroidalCSBasisChangeComponent, G2 <: ToroidalCSBasisChangeComponent, G3 <: ToroidalCSBasisChangeComponent} <: BasisChangeTensor{G1, G2, G3, ToroidalCS, PseudoToroidalCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        R::G1
        Z::G2
        ϕ::G3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    BasisChangeTensor{ToroidalCS, PseudoToroidalCS}(g1, g2, g3) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:339 =#
            ToroidalCS2PseudoToroidalCSBasisChangeTensor(g1, g2, g3)
        end
end
begin
    struct CartesianCS2PseudoToroidalCSBasisChangeTensor{G1 <: CartesianCSBasisChangeComponent, G2 <: CartesianCSBasisChangeComponent, G3 <: CartesianCSBasisChangeComponent} <: BasisChangeTensor{G1, G2, G3, CartesianCS, PseudoToroidalCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        R::G1
        Z::G2
        ϕ::G3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    BasisChangeTensor{CartesianCS, PseudoToroidalCS}(g1, g2, g3) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:339 =#
            CartesianCS2PseudoToroidalCSBasisChangeTensor(g1, g2, g3)
        end
end
begin
    struct CylindricalCS2ToroidalCSBasisChangeTensor{G1 <: CylindricalCSBasisChangeComponent, G2 <: CylindricalCSBasisChangeComponent, G3 <: CylindricalCSBasisChangeComponent} <: BasisChangeTensor{G1, G2, G3, CylindricalCS, ToroidalCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        r::G1
        θ::G2
        ϕ::G3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    BasisChangeTensor{CylindricalCS, ToroidalCS}(g1, g2, g3) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:339 =#
            CylindricalCS2ToroidalCSBasisChangeTensor(g1, g2, g3)
        end
end
begin
    struct ParallelFieldAlignedCS2ToroidalCSBasisChangeTensor{G1 <: ParallelFieldAlignedCSBasisChangeComponent, G2 <: ParallelFieldAlignedCSBasisChangeComponent, G3 <: ParallelFieldAlignedCSBasisChangeComponent} <: BasisChangeTensor{G1, G2, G3, ParallelFieldAlignedCS, ToroidalCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        r::G1
        θ::G2
        ϕ::G3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    BasisChangeTensor{ParallelFieldAlignedCS, ToroidalCS}(g1, g2, g3) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:339 =#
            ParallelFieldAlignedCS2ToroidalCSBasisChangeTensor(g1, g2, g3)
        end
end
begin
    struct SphericalCS2ToroidalCSBasisChangeTensor{G1 <: SphericalCSBasisChangeComponent, G2 <: SphericalCSBasisChangeComponent, G3 <: SphericalCSBasisChangeComponent} <: BasisChangeTensor{G1, G2, G3, SphericalCS, ToroidalCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        r::G1
        θ::G2
        ϕ::G3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    BasisChangeTensor{SphericalCS, ToroidalCS}(g1, g2, g3) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:339 =#
            SphericalCS2ToroidalCSBasisChangeTensor(g1, g2, g3)
        end
end
begin
    struct PoloidalFieldAlignedCS2ToroidalCSBasisChangeTensor{G1 <: PoloidalFieldAlignedCSBasisChangeComponent, G2 <: PoloidalFieldAlignedCSBasisChangeComponent, G3 <: PoloidalFieldAlignedCSBasisChangeComponent} <: BasisChangeTensor{G1, G2, G3, PoloidalFieldAlignedCS, ToroidalCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        r::G1
        θ::G2
        ϕ::G3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    BasisChangeTensor{PoloidalFieldAlignedCS, ToroidalCS}(g1, g2, g3) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:339 =#
            PoloidalFieldAlignedCS2ToroidalCSBasisChangeTensor(g1, g2, g3)
        end
end
begin
    struct PseudoToroidalCS2ToroidalCSBasisChangeTensor{G1 <: PseudoToroidalCSBasisChangeComponent, G2 <: PseudoToroidalCSBasisChangeComponent, G3 <: PseudoToroidalCSBasisChangeComponent} <: BasisChangeTensor{G1, G2, G3, PseudoToroidalCS, ToroidalCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        r::G1
        θ::G2
        ϕ::G3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    BasisChangeTensor{PseudoToroidalCS, ToroidalCS}(g1, g2, g3) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:339 =#
            PseudoToroidalCS2ToroidalCSBasisChangeTensor(g1, g2, g3)
        end
end
begin
    struct ToroidalCS2ToroidalCSBasisChangeTensor{G1 <: ToroidalCSBasisChangeComponent, G2 <: ToroidalCSBasisChangeComponent, G3 <: ToroidalCSBasisChangeComponent} <: BasisChangeTensor{G1, G2, G3, ToroidalCS, ToroidalCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        r::G1
        θ::G2
        ϕ::G3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    BasisChangeTensor{ToroidalCS, ToroidalCS}(g1, g2, g3) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:339 =#
            ToroidalCS2ToroidalCSBasisChangeTensor(g1, g2, g3)
        end
end
begin
    struct CartesianCS2ToroidalCSBasisChangeTensor{G1 <: CartesianCSBasisChangeComponent, G2 <: CartesianCSBasisChangeComponent, G3 <: CartesianCSBasisChangeComponent} <: BasisChangeTensor{G1, G2, G3, CartesianCS, ToroidalCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        r::G1
        θ::G2
        ϕ::G3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    BasisChangeTensor{CartesianCS, ToroidalCS}(g1, g2, g3) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:339 =#
            CartesianCS2ToroidalCSBasisChangeTensor(g1, g2, g3)
        end
end
begin
    struct CylindricalCS2CartesianCSBasisChangeTensor{G1 <: CylindricalCSBasisChangeComponent, G2 <: CylindricalCSBasisChangeComponent, G3 <: CylindricalCSBasisChangeComponent} <: BasisChangeTensor{G1, G2, G3, CylindricalCS, CartesianCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        x::G1
        y::G2
        z::G3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    BasisChangeTensor{CylindricalCS, CartesianCS}(g1, g2, g3) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:339 =#
            CylindricalCS2CartesianCSBasisChangeTensor(g1, g2, g3)
        end
end
begin
    struct ParallelFieldAlignedCS2CartesianCSBasisChangeTensor{G1 <: ParallelFieldAlignedCSBasisChangeComponent, G2 <: ParallelFieldAlignedCSBasisChangeComponent, G3 <: ParallelFieldAlignedCSBasisChangeComponent} <: BasisChangeTensor{G1, G2, G3, ParallelFieldAlignedCS, CartesianCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        x::G1
        y::G2
        z::G3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    BasisChangeTensor{ParallelFieldAlignedCS, CartesianCS}(g1, g2, g3) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:339 =#
            ParallelFieldAlignedCS2CartesianCSBasisChangeTensor(g1, g2, g3)
        end
end
begin
    struct SphericalCS2CartesianCSBasisChangeTensor{G1 <: SphericalCSBasisChangeComponent, G2 <: SphericalCSBasisChangeComponent, G3 <: SphericalCSBasisChangeComponent} <: BasisChangeTensor{G1, G2, G3, SphericalCS, CartesianCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        x::G1
        y::G2
        z::G3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    BasisChangeTensor{SphericalCS, CartesianCS}(g1, g2, g3) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:339 =#
            SphericalCS2CartesianCSBasisChangeTensor(g1, g2, g3)
        end
end
begin
    struct PoloidalFieldAlignedCS2CartesianCSBasisChangeTensor{G1 <: PoloidalFieldAlignedCSBasisChangeComponent, G2 <: PoloidalFieldAlignedCSBasisChangeComponent, G3 <: PoloidalFieldAlignedCSBasisChangeComponent} <: BasisChangeTensor{G1, G2, G3, PoloidalFieldAlignedCS, CartesianCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        x::G1
        y::G2
        z::G3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    BasisChangeTensor{PoloidalFieldAlignedCS, CartesianCS}(g1, g2, g3) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:339 =#
            PoloidalFieldAlignedCS2CartesianCSBasisChangeTensor(g1, g2, g3)
        end
end
begin
    struct PseudoToroidalCS2CartesianCSBasisChangeTensor{G1 <: PseudoToroidalCSBasisChangeComponent, G2 <: PseudoToroidalCSBasisChangeComponent, G3 <: PseudoToroidalCSBasisChangeComponent} <: BasisChangeTensor{G1, G2, G3, PseudoToroidalCS, CartesianCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        x::G1
        y::G2
        z::G3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    BasisChangeTensor{PseudoToroidalCS, CartesianCS}(g1, g2, g3) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:339 =#
            PseudoToroidalCS2CartesianCSBasisChangeTensor(g1, g2, g3)
        end
end
begin
    struct ToroidalCS2CartesianCSBasisChangeTensor{G1 <: ToroidalCSBasisChangeComponent, G2 <: ToroidalCSBasisChangeComponent, G3 <: ToroidalCSBasisChangeComponent} <: BasisChangeTensor{G1, G2, G3, ToroidalCS, CartesianCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        x::G1
        y::G2
        z::G3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    BasisChangeTensor{ToroidalCS, CartesianCS}(g1, g2, g3) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:339 =#
            ToroidalCS2CartesianCSBasisChangeTensor(g1, g2, g3)
        end
end
begin
    struct CartesianCS2CartesianCSBasisChangeTensor{G1 <: CartesianCSBasisChangeComponent, G2 <: CartesianCSBasisChangeComponent, G3 <: CartesianCSBasisChangeComponent} <: BasisChangeTensor{G1, G2, G3, CartesianCS, CartesianCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        x::G1
        y::G2
        z::G3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    BasisChangeTensor{CartesianCS, CartesianCS}(g1, g2, g3) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:339 =#
            CartesianCS2CartesianCSBasisChangeTensor(g1, g2, g3)
        end
end
begin
    struct CylindricalCSPVector{V1, V2, V3, N} <: PVector{V1, V2, V3, V1, V2, V3, N, CylindricalCS, CylindricalCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        r::V1
        θ::V2
        z::V3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    (PVector{CylindricalCS, N}(v1::V1, v2::V2, v3::V3) where {N, V1, V2, V3}) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:360 =#
            CylindricalCSPVector{V1, V2, V3, N}(v1, v2, v3)
        end
    (PVector{CylindricalCS, CylindricalCS, N}(v1::V1, v2::V2, v3::V3) where {N, V1, V2, V3}) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:361 =#
            CylindricalCSPVector{V1, V2, V3, N}(v1, v2, v3)
        end
end
begin
    struct ParallelFieldAlignedCS_CylindricalCSPVector{V1, V2, V3, P1, P2, P3, N} <: PVector{V1, V2, V3, P1, P2, P3, N, ParallelFieldAlignedCS, CylindricalCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        ǁ::V1
        ⊥::V2
        ʌ::V3
        r::P1
        θ::P2
        z::P3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    (PVector{ParallelFieldAlignedCS, CylindricalCS, N}(v1::V1, v2::V2, v3::V3, p1::P1, p2::P2, p3::P3; kw...) where {N, V1, V2, V3, P1, P2, P3}) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:379 =#
            ParallelFieldAlignedCS_CylindricalCSPVector{V1, V2, V3, P1, P2, P3, N}(v1, v2, v3, p1, p2, p3)
        end
end
begin
    struct SphericalCS_CylindricalCSPVector{V1, V2, V3, P1, P2, P3, N} <: PVector{V1, V2, V3, P1, P2, P3, N, SphericalCS, CylindricalCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        r::V1
        θ::V2
        Ψ::V3
        _r::P1
        _θ::P2
        z::P3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    (PVector{SphericalCS, CylindricalCS, N}(v1::V1, v2::V2, v3::V3, p1::P1, p2::P2, p3::P3; kw...) where {N, V1, V2, V3, P1, P2, P3}) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:379 =#
            SphericalCS_CylindricalCSPVector{V1, V2, V3, P1, P2, P3, N}(v1, v2, v3, p1, p2, p3)
        end
end
begin
    struct PoloidalFieldAlignedCS_CylindricalCSPVector{V1, V2, V3, P1, P2, P3, N} <: PVector{V1, V2, V3, P1, P2, P3, N, PoloidalFieldAlignedCS, CylindricalCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        x::V1
        y::V2
        ϕ::V3
        r::P1
        θ::P2
        z::P3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    (PVector{PoloidalFieldAlignedCS, CylindricalCS, N}(v1::V1, v2::V2, v3::V3, p1::P1, p2::P2, p3::P3; kw...) where {N, V1, V2, V3, P1, P2, P3}) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:379 =#
            PoloidalFieldAlignedCS_CylindricalCSPVector{V1, V2, V3, P1, P2, P3, N}(v1, v2, v3, p1, p2, p3)
        end
end
begin
    struct PseudoToroidalCS_CylindricalCSPVector{V1, V2, V3, P1, P2, P3, N} <: PVector{V1, V2, V3, P1, P2, P3, N, PseudoToroidalCS, CylindricalCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        R::V1
        Z::V2
        ϕ::V3
        r::P1
        θ::P2
        z::P3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    (PVector{PseudoToroidalCS, CylindricalCS, N}(v1::V1, v2::V2, v3::V3, p1::P1, p2::P2, p3::P3; kw...) where {N, V1, V2, V3, P1, P2, P3}) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:379 =#
            PseudoToroidalCS_CylindricalCSPVector{V1, V2, V3, P1, P2, P3, N}(v1, v2, v3, p1, p2, p3)
        end
end
begin
    struct ToroidalCS_CylindricalCSPVector{V1, V2, V3, P1, P2, P3, N} <: PVector{V1, V2, V3, P1, P2, P3, N, ToroidalCS, CylindricalCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        r::V1
        θ::V2
        ϕ::V3
        _r::P1
        _θ::P2
        z::P3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    (PVector{ToroidalCS, CylindricalCS, N}(v1::V1, v2::V2, v3::V3, p1::P1, p2::P2, p3::P3; kw...) where {N, V1, V2, V3, P1, P2, P3}) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:379 =#
            ToroidalCS_CylindricalCSPVector{V1, V2, V3, P1, P2, P3, N}(v1, v2, v3, p1, p2, p3)
        end
end
begin
    struct CartesianCS_CylindricalCSPVector{V1, V2, V3, P1, P2, P3, N} <: PVector{V1, V2, V3, P1, P2, P3, N, CartesianCS, CylindricalCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        x::V1
        y::V2
        z::V3
        r::P1
        θ::P2
        _z::P3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    (PVector{CartesianCS, CylindricalCS, N}(v1::V1, v2::V2, v3::V3, p1::P1, p2::P2, p3::P3; kw...) where {N, V1, V2, V3, P1, P2, P3}) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:379 =#
            CartesianCS_CylindricalCSPVector{V1, V2, V3, P1, P2, P3, N}(v1, v2, v3, p1, p2, p3)
        end
end
begin
    struct CylindricalCS_ParallelFieldAlignedCSPVector{V1, V2, V3, P1, P2, P3, N} <: PVector{V1, V2, V3, P1, P2, P3, N, CylindricalCS, ParallelFieldAlignedCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        r::V1
        θ::V2
        z::V3
        ǁ::P1
        ⊥::P2
        ʌ::P3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    (PVector{CylindricalCS, ParallelFieldAlignedCS, N}(v1::V1, v2::V2, v3::V3, p1::P1, p2::P2, p3::P3; kw...) where {N, V1, V2, V3, P1, P2, P3}) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:379 =#
            CylindricalCS_ParallelFieldAlignedCSPVector{V1, V2, V3, P1, P2, P3, N}(v1, v2, v3, p1, p2, p3)
        end
end
begin
    struct ParallelFieldAlignedCSPVector{V1, V2, V3, N} <: PVector{V1, V2, V3, V1, V2, V3, N, ParallelFieldAlignedCS, ParallelFieldAlignedCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        ǁ::V1
        ⊥::V2
        ʌ::V3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    (PVector{ParallelFieldAlignedCS, N}(v1::V1, v2::V2, v3::V3) where {N, V1, V2, V3}) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:360 =#
            ParallelFieldAlignedCSPVector{V1, V2, V3, N}(v1, v2, v3)
        end
    (PVector{ParallelFieldAlignedCS, ParallelFieldAlignedCS, N}(v1::V1, v2::V2, v3::V3) where {N, V1, V2, V3}) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:361 =#
            ParallelFieldAlignedCSPVector{V1, V2, V3, N}(v1, v2, v3)
        end
end
begin
    struct SphericalCS_ParallelFieldAlignedCSPVector{V1, V2, V3, P1, P2, P3, N} <: PVector{V1, V2, V3, P1, P2, P3, N, SphericalCS, ParallelFieldAlignedCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        r::V1
        θ::V2
        Ψ::V3
        ǁ::P1
        ⊥::P2
        ʌ::P3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    (PVector{SphericalCS, ParallelFieldAlignedCS, N}(v1::V1, v2::V2, v3::V3, p1::P1, p2::P2, p3::P3; kw...) where {N, V1, V2, V3, P1, P2, P3}) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:379 =#
            SphericalCS_ParallelFieldAlignedCSPVector{V1, V2, V3, P1, P2, P3, N}(v1, v2, v3, p1, p2, p3)
        end
end
begin
    struct PoloidalFieldAlignedCS_ParallelFieldAlignedCSPVector{V1, V2, V3, P1, P2, P3, N} <: PVector{V1, V2, V3, P1, P2, P3, N, PoloidalFieldAlignedCS, ParallelFieldAlignedCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        x::V1
        y::V2
        ϕ::V3
        ǁ::P1
        ⊥::P2
        ʌ::P3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    (PVector{PoloidalFieldAlignedCS, ParallelFieldAlignedCS, N}(v1::V1, v2::V2, v3::V3, p1::P1, p2::P2, p3::P3; kw...) where {N, V1, V2, V3, P1, P2, P3}) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:379 =#
            PoloidalFieldAlignedCS_ParallelFieldAlignedCSPVector{V1, V2, V3, P1, P2, P3, N}(v1, v2, v3, p1, p2, p3)
        end
end
begin
    struct PseudoToroidalCS_ParallelFieldAlignedCSPVector{V1, V2, V3, P1, P2, P3, N} <: PVector{V1, V2, V3, P1, P2, P3, N, PseudoToroidalCS, ParallelFieldAlignedCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        R::V1
        Z::V2
        ϕ::V3
        ǁ::P1
        ⊥::P2
        ʌ::P3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    (PVector{PseudoToroidalCS, ParallelFieldAlignedCS, N}(v1::V1, v2::V2, v3::V3, p1::P1, p2::P2, p3::P3; kw...) where {N, V1, V2, V3, P1, P2, P3}) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:379 =#
            PseudoToroidalCS_ParallelFieldAlignedCSPVector{V1, V2, V3, P1, P2, P3, N}(v1, v2, v3, p1, p2, p3)
        end
end
begin
    struct ToroidalCS_ParallelFieldAlignedCSPVector{V1, V2, V3, P1, P2, P3, N} <: PVector{V1, V2, V3, P1, P2, P3, N, ToroidalCS, ParallelFieldAlignedCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        r::V1
        θ::V2
        ϕ::V3
        ǁ::P1
        ⊥::P2
        ʌ::P3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    (PVector{ToroidalCS, ParallelFieldAlignedCS, N}(v1::V1, v2::V2, v3::V3, p1::P1, p2::P2, p3::P3; kw...) where {N, V1, V2, V3, P1, P2, P3}) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:379 =#
            ToroidalCS_ParallelFieldAlignedCSPVector{V1, V2, V3, P1, P2, P3, N}(v1, v2, v3, p1, p2, p3)
        end
end
begin
    struct CartesianCS_ParallelFieldAlignedCSPVector{V1, V2, V3, P1, P2, P3, N} <: PVector{V1, V2, V3, P1, P2, P3, N, CartesianCS, ParallelFieldAlignedCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        x::V1
        y::V2
        z::V3
        ǁ::P1
        ⊥::P2
        ʌ::P3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    (PVector{CartesianCS, ParallelFieldAlignedCS, N}(v1::V1, v2::V2, v3::V3, p1::P1, p2::P2, p3::P3; kw...) where {N, V1, V2, V3, P1, P2, P3}) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:379 =#
            CartesianCS_ParallelFieldAlignedCSPVector{V1, V2, V3, P1, P2, P3, N}(v1, v2, v3, p1, p2, p3)
        end
end
begin
    struct CylindricalCS_SphericalCSPVector{V1, V2, V3, P1, P2, P3, N} <: PVector{V1, V2, V3, P1, P2, P3, N, CylindricalCS, SphericalCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        r::V1
        θ::V2
        z::V3
        _r::P1
        _θ::P2
        Ψ::P3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    (PVector{CylindricalCS, SphericalCS, N}(v1::V1, v2::V2, v3::V3, p1::P1, p2::P2, p3::P3; kw...) where {N, V1, V2, V3, P1, P2, P3}) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:379 =#
            CylindricalCS_SphericalCSPVector{V1, V2, V3, P1, P2, P3, N}(v1, v2, v3, p1, p2, p3)
        end
end
begin
    struct ParallelFieldAlignedCS_SphericalCSPVector{V1, V2, V3, P1, P2, P3, N} <: PVector{V1, V2, V3, P1, P2, P3, N, ParallelFieldAlignedCS, SphericalCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        ǁ::V1
        ⊥::V2
        ʌ::V3
        r::P1
        θ::P2
        Ψ::P3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    (PVector{ParallelFieldAlignedCS, SphericalCS, N}(v1::V1, v2::V2, v3::V3, p1::P1, p2::P2, p3::P3; kw...) where {N, V1, V2, V3, P1, P2, P3}) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:379 =#
            ParallelFieldAlignedCS_SphericalCSPVector{V1, V2, V3, P1, P2, P3, N}(v1, v2, v3, p1, p2, p3)
        end
end
begin
    struct SphericalCSPVector{V1, V2, V3, N} <: PVector{V1, V2, V3, V1, V2, V3, N, SphericalCS, SphericalCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        r::V1
        θ::V2
        Ψ::V3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    (PVector{SphericalCS, N}(v1::V1, v2::V2, v3::V3) where {N, V1, V2, V3}) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:360 =#
            SphericalCSPVector{V1, V2, V3, N}(v1, v2, v3)
        end
    (PVector{SphericalCS, SphericalCS, N}(v1::V1, v2::V2, v3::V3) where {N, V1, V2, V3}) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:361 =#
            SphericalCSPVector{V1, V2, V3, N}(v1, v2, v3)
        end
end
begin
    struct PoloidalFieldAlignedCS_SphericalCSPVector{V1, V2, V3, P1, P2, P3, N} <: PVector{V1, V2, V3, P1, P2, P3, N, PoloidalFieldAlignedCS, SphericalCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        x::V1
        y::V2
        ϕ::V3
        r::P1
        θ::P2
        Ψ::P3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    (PVector{PoloidalFieldAlignedCS, SphericalCS, N}(v1::V1, v2::V2, v3::V3, p1::P1, p2::P2, p3::P3; kw...) where {N, V1, V2, V3, P1, P2, P3}) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:379 =#
            PoloidalFieldAlignedCS_SphericalCSPVector{V1, V2, V3, P1, P2, P3, N}(v1, v2, v3, p1, p2, p3)
        end
end
begin
    struct PseudoToroidalCS_SphericalCSPVector{V1, V2, V3, P1, P2, P3, N} <: PVector{V1, V2, V3, P1, P2, P3, N, PseudoToroidalCS, SphericalCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        R::V1
        Z::V2
        ϕ::V3
        r::P1
        θ::P2
        Ψ::P3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    (PVector{PseudoToroidalCS, SphericalCS, N}(v1::V1, v2::V2, v3::V3, p1::P1, p2::P2, p3::P3; kw...) where {N, V1, V2, V3, P1, P2, P3}) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:379 =#
            PseudoToroidalCS_SphericalCSPVector{V1, V2, V3, P1, P2, P3, N}(v1, v2, v3, p1, p2, p3)
        end
end
begin
    struct ToroidalCS_SphericalCSPVector{V1, V2, V3, P1, P2, P3, N} <: PVector{V1, V2, V3, P1, P2, P3, N, ToroidalCS, SphericalCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        r::V1
        θ::V2
        ϕ::V3
        _r::P1
        _θ::P2
        Ψ::P3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    (PVector{ToroidalCS, SphericalCS, N}(v1::V1, v2::V2, v3::V3, p1::P1, p2::P2, p3::P3; kw...) where {N, V1, V2, V3, P1, P2, P3}) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:379 =#
            ToroidalCS_SphericalCSPVector{V1, V2, V3, P1, P2, P3, N}(v1, v2, v3, p1, p2, p3)
        end
end
begin
    struct CartesianCS_SphericalCSPVector{V1, V2, V3, P1, P2, P3, N} <: PVector{V1, V2, V3, P1, P2, P3, N, CartesianCS, SphericalCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        x::V1
        y::V2
        z::V3
        r::P1
        θ::P2
        Ψ::P3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    (PVector{CartesianCS, SphericalCS, N}(v1::V1, v2::V2, v3::V3, p1::P1, p2::P2, p3::P3; kw...) where {N, V1, V2, V3, P1, P2, P3}) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:379 =#
            CartesianCS_SphericalCSPVector{V1, V2, V3, P1, P2, P3, N}(v1, v2, v3, p1, p2, p3)
        end
end
begin
    struct CylindricalCS_PoloidalFieldAlignedCSPVector{V1, V2, V3, P1, P2, P3, N} <: PVector{V1, V2, V3, P1, P2, P3, N, CylindricalCS, PoloidalFieldAlignedCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        r::V1
        θ::V2
        z::V3
        x::P1
        y::P2
        ϕ::P3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    (PVector{CylindricalCS, PoloidalFieldAlignedCS, N}(v1::V1, v2::V2, v3::V3, p1::P1, p2::P2, p3::P3; kw...) where {N, V1, V2, V3, P1, P2, P3}) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:379 =#
            CylindricalCS_PoloidalFieldAlignedCSPVector{V1, V2, V3, P1, P2, P3, N}(v1, v2, v3, p1, p2, p3)
        end
end
begin
    struct ParallelFieldAlignedCS_PoloidalFieldAlignedCSPVector{V1, V2, V3, P1, P2, P3, N} <: PVector{V1, V2, V3, P1, P2, P3, N, ParallelFieldAlignedCS, PoloidalFieldAlignedCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        ǁ::V1
        ⊥::V2
        ʌ::V3
        x::P1
        y::P2
        ϕ::P3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    (PVector{ParallelFieldAlignedCS, PoloidalFieldAlignedCS, N}(v1::V1, v2::V2, v3::V3, p1::P1, p2::P2, p3::P3; kw...) where {N, V1, V2, V3, P1, P2, P3}) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:379 =#
            ParallelFieldAlignedCS_PoloidalFieldAlignedCSPVector{V1, V2, V3, P1, P2, P3, N}(v1, v2, v3, p1, p2, p3)
        end
end
begin
    struct SphericalCS_PoloidalFieldAlignedCSPVector{V1, V2, V3, P1, P2, P3, N} <: PVector{V1, V2, V3, P1, P2, P3, N, SphericalCS, PoloidalFieldAlignedCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        r::V1
        θ::V2
        Ψ::V3
        x::P1
        y::P2
        ϕ::P3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    (PVector{SphericalCS, PoloidalFieldAlignedCS, N}(v1::V1, v2::V2, v3::V3, p1::P1, p2::P2, p3::P3; kw...) where {N, V1, V2, V3, P1, P2, P3}) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:379 =#
            SphericalCS_PoloidalFieldAlignedCSPVector{V1, V2, V3, P1, P2, P3, N}(v1, v2, v3, p1, p2, p3)
        end
end
begin
    struct PoloidalFieldAlignedCSPVector{V1, V2, V3, N} <: PVector{V1, V2, V3, V1, V2, V3, N, PoloidalFieldAlignedCS, PoloidalFieldAlignedCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        x::V1
        y::V2
        ϕ::V3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    (PVector{PoloidalFieldAlignedCS, N}(v1::V1, v2::V2, v3::V3) where {N, V1, V2, V3}) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:360 =#
            PoloidalFieldAlignedCSPVector{V1, V2, V3, N}(v1, v2, v3)
        end
    (PVector{PoloidalFieldAlignedCS, PoloidalFieldAlignedCS, N}(v1::V1, v2::V2, v3::V3) where {N, V1, V2, V3}) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:361 =#
            PoloidalFieldAlignedCSPVector{V1, V2, V3, N}(v1, v2, v3)
        end
end
begin
    struct PseudoToroidalCS_PoloidalFieldAlignedCSPVector{V1, V2, V3, P1, P2, P3, N} <: PVector{V1, V2, V3, P1, P2, P3, N, PseudoToroidalCS, PoloidalFieldAlignedCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        R::V1
        Z::V2
        ϕ::V3
        x::P1
        y::P2
        _ϕ::P3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    (PVector{PseudoToroidalCS, PoloidalFieldAlignedCS, N}(v1::V1, v2::V2, v3::V3, p1::P1, p2::P2, p3::P3; kw...) where {N, V1, V2, V3, P1, P2, P3}) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:379 =#
            PseudoToroidalCS_PoloidalFieldAlignedCSPVector{V1, V2, V3, P1, P2, P3, N}(v1, v2, v3, p1, p2, p3)
        end
end
begin
    struct ToroidalCS_PoloidalFieldAlignedCSPVector{V1, V2, V3, P1, P2, P3, N} <: PVector{V1, V2, V3, P1, P2, P3, N, ToroidalCS, PoloidalFieldAlignedCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        r::V1
        θ::V2
        ϕ::V3
        x::P1
        y::P2
        _ϕ::P3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    (PVector{ToroidalCS, PoloidalFieldAlignedCS, N}(v1::V1, v2::V2, v3::V3, p1::P1, p2::P2, p3::P3; kw...) where {N, V1, V2, V3, P1, P2, P3}) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:379 =#
            ToroidalCS_PoloidalFieldAlignedCSPVector{V1, V2, V3, P1, P2, P3, N}(v1, v2, v3, p1, p2, p3)
        end
end
begin
    struct CartesianCS_PoloidalFieldAlignedCSPVector{V1, V2, V3, P1, P2, P3, N} <: PVector{V1, V2, V3, P1, P2, P3, N, CartesianCS, PoloidalFieldAlignedCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        x::V1
        y::V2
        z::V3
        _x::P1
        _y::P2
        ϕ::P3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    (PVector{CartesianCS, PoloidalFieldAlignedCS, N}(v1::V1, v2::V2, v3::V3, p1::P1, p2::P2, p3::P3; kw...) where {N, V1, V2, V3, P1, P2, P3}) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:379 =#
            CartesianCS_PoloidalFieldAlignedCSPVector{V1, V2, V3, P1, P2, P3, N}(v1, v2, v3, p1, p2, p3)
        end
end
begin
    struct CylindricalCS_PseudoToroidalCSPVector{V1, V2, V3, P1, P2, P3, N} <: PVector{V1, V2, V3, P1, P2, P3, N, CylindricalCS, PseudoToroidalCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        r::V1
        θ::V2
        z::V3
        R::P1
        Z::P2
        ϕ::P3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    (PVector{CylindricalCS, PseudoToroidalCS, N}(v1::V1, v2::V2, v3::V3, p1::P1, p2::P2, p3::P3; kw...) where {N, V1, V2, V3, P1, P2, P3}) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:379 =#
            CylindricalCS_PseudoToroidalCSPVector{V1, V2, V3, P1, P2, P3, N}(v1, v2, v3, p1, p2, p3)
        end
end
begin
    struct ParallelFieldAlignedCS_PseudoToroidalCSPVector{V1, V2, V3, P1, P2, P3, N} <: PVector{V1, V2, V3, P1, P2, P3, N, ParallelFieldAlignedCS, PseudoToroidalCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        ǁ::V1
        ⊥::V2
        ʌ::V3
        R::P1
        Z::P2
        ϕ::P3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    (PVector{ParallelFieldAlignedCS, PseudoToroidalCS, N}(v1::V1, v2::V2, v3::V3, p1::P1, p2::P2, p3::P3; kw...) where {N, V1, V2, V3, P1, P2, P3}) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:379 =#
            ParallelFieldAlignedCS_PseudoToroidalCSPVector{V1, V2, V3, P1, P2, P3, N}(v1, v2, v3, p1, p2, p3)
        end
end
begin
    struct SphericalCS_PseudoToroidalCSPVector{V1, V2, V3, P1, P2, P3, N} <: PVector{V1, V2, V3, P1, P2, P3, N, SphericalCS, PseudoToroidalCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        r::V1
        θ::V2
        Ψ::V3
        R::P1
        Z::P2
        ϕ::P3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    (PVector{SphericalCS, PseudoToroidalCS, N}(v1::V1, v2::V2, v3::V3, p1::P1, p2::P2, p3::P3; kw...) where {N, V1, V2, V3, P1, P2, P3}) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:379 =#
            SphericalCS_PseudoToroidalCSPVector{V1, V2, V3, P1, P2, P3, N}(v1, v2, v3, p1, p2, p3)
        end
end
begin
    struct PoloidalFieldAlignedCS_PseudoToroidalCSPVector{V1, V2, V3, P1, P2, P3, N} <: PVector{V1, V2, V3, P1, P2, P3, N, PoloidalFieldAlignedCS, PseudoToroidalCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        x::V1
        y::V2
        ϕ::V3
        R::P1
        Z::P2
        _ϕ::P3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    (PVector{PoloidalFieldAlignedCS, PseudoToroidalCS, N}(v1::V1, v2::V2, v3::V3, p1::P1, p2::P2, p3::P3; kw...) where {N, V1, V2, V3, P1, P2, P3}) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:379 =#
            PoloidalFieldAlignedCS_PseudoToroidalCSPVector{V1, V2, V3, P1, P2, P3, N}(v1, v2, v3, p1, p2, p3)
        end
end
begin
    struct PseudoToroidalCSPVector{V1, V2, V3, N} <: PVector{V1, V2, V3, V1, V2, V3, N, PseudoToroidalCS, PseudoToroidalCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        R::V1
        Z::V2
        ϕ::V3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    (PVector{PseudoToroidalCS, N}(v1::V1, v2::V2, v3::V3) where {N, V1, V2, V3}) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:360 =#
            PseudoToroidalCSPVector{V1, V2, V3, N}(v1, v2, v3)
        end
    (PVector{PseudoToroidalCS, PseudoToroidalCS, N}(v1::V1, v2::V2, v3::V3) where {N, V1, V2, V3}) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:361 =#
            PseudoToroidalCSPVector{V1, V2, V3, N}(v1, v2, v3)
        end
end
begin
    struct ToroidalCS_PseudoToroidalCSPVector{V1, V2, V3, P1, P2, P3, N} <: PVector{V1, V2, V3, P1, P2, P3, N, ToroidalCS, PseudoToroidalCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        r::V1
        θ::V2
        ϕ::V3
        R::P1
        Z::P2
        _ϕ::P3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    (PVector{ToroidalCS, PseudoToroidalCS, N}(v1::V1, v2::V2, v3::V3, p1::P1, p2::P2, p3::P3; kw...) where {N, V1, V2, V3, P1, P2, P3}) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:379 =#
            ToroidalCS_PseudoToroidalCSPVector{V1, V2, V3, P1, P2, P3, N}(v1, v2, v3, p1, p2, p3)
        end
end
begin
    struct CartesianCS_PseudoToroidalCSPVector{V1, V2, V3, P1, P2, P3, N} <: PVector{V1, V2, V3, P1, P2, P3, N, CartesianCS, PseudoToroidalCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        x::V1
        y::V2
        z::V3
        R::P1
        Z::P2
        ϕ::P3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    (PVector{CartesianCS, PseudoToroidalCS, N}(v1::V1, v2::V2, v3::V3, p1::P1, p2::P2, p3::P3; kw...) where {N, V1, V2, V3, P1, P2, P3}) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:379 =#
            CartesianCS_PseudoToroidalCSPVector{V1, V2, V3, P1, P2, P3, N}(v1, v2, v3, p1, p2, p3)
        end
end
begin
    struct CylindricalCS_ToroidalCSPVector{V1, V2, V3, P1, P2, P3, N} <: PVector{V1, V2, V3, P1, P2, P3, N, CylindricalCS, ToroidalCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        r::V1
        θ::V2
        z::V3
        _r::P1
        _θ::P2
        ϕ::P3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    (PVector{CylindricalCS, ToroidalCS, N}(v1::V1, v2::V2, v3::V3, p1::P1, p2::P2, p3::P3; kw...) where {N, V1, V2, V3, P1, P2, P3}) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:379 =#
            CylindricalCS_ToroidalCSPVector{V1, V2, V3, P1, P2, P3, N}(v1, v2, v3, p1, p2, p3)
        end
end
begin
    struct ParallelFieldAlignedCS_ToroidalCSPVector{V1, V2, V3, P1, P2, P3, N} <: PVector{V1, V2, V3, P1, P2, P3, N, ParallelFieldAlignedCS, ToroidalCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        ǁ::V1
        ⊥::V2
        ʌ::V3
        r::P1
        θ::P2
        ϕ::P3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    (PVector{ParallelFieldAlignedCS, ToroidalCS, N}(v1::V1, v2::V2, v3::V3, p1::P1, p2::P2, p3::P3; kw...) where {N, V1, V2, V3, P1, P2, P3}) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:379 =#
            ParallelFieldAlignedCS_ToroidalCSPVector{V1, V2, V3, P1, P2, P3, N}(v1, v2, v3, p1, p2, p3)
        end
end
begin
    struct SphericalCS_ToroidalCSPVector{V1, V2, V3, P1, P2, P3, N} <: PVector{V1, V2, V3, P1, P2, P3, N, SphericalCS, ToroidalCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        r::V1
        θ::V2
        Ψ::V3
        _r::P1
        _θ::P2
        ϕ::P3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    (PVector{SphericalCS, ToroidalCS, N}(v1::V1, v2::V2, v3::V3, p1::P1, p2::P2, p3::P3; kw...) where {N, V1, V2, V3, P1, P2, P3}) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:379 =#
            SphericalCS_ToroidalCSPVector{V1, V2, V3, P1, P2, P3, N}(v1, v2, v3, p1, p2, p3)
        end
end
begin
    struct PoloidalFieldAlignedCS_ToroidalCSPVector{V1, V2, V3, P1, P2, P3, N} <: PVector{V1, V2, V3, P1, P2, P3, N, PoloidalFieldAlignedCS, ToroidalCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        x::V1
        y::V2
        ϕ::V3
        r::P1
        θ::P2
        _ϕ::P3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    (PVector{PoloidalFieldAlignedCS, ToroidalCS, N}(v1::V1, v2::V2, v3::V3, p1::P1, p2::P2, p3::P3; kw...) where {N, V1, V2, V3, P1, P2, P3}) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:379 =#
            PoloidalFieldAlignedCS_ToroidalCSPVector{V1, V2, V3, P1, P2, P3, N}(v1, v2, v3, p1, p2, p3)
        end
end
begin
    struct PseudoToroidalCS_ToroidalCSPVector{V1, V2, V3, P1, P2, P3, N} <: PVector{V1, V2, V3, P1, P2, P3, N, PseudoToroidalCS, ToroidalCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        R::V1
        Z::V2
        ϕ::V3
        r::P1
        θ::P2
        _ϕ::P3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    (PVector{PseudoToroidalCS, ToroidalCS, N}(v1::V1, v2::V2, v3::V3, p1::P1, p2::P2, p3::P3; kw...) where {N, V1, V2, V3, P1, P2, P3}) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:379 =#
            PseudoToroidalCS_ToroidalCSPVector{V1, V2, V3, P1, P2, P3, N}(v1, v2, v3, p1, p2, p3)
        end
end
begin
    struct ToroidalCSPVector{V1, V2, V3, N} <: PVector{V1, V2, V3, V1, V2, V3, N, ToroidalCS, ToroidalCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        r::V1
        θ::V2
        ϕ::V3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    (PVector{ToroidalCS, N}(v1::V1, v2::V2, v3::V3) where {N, V1, V2, V3}) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:360 =#
            ToroidalCSPVector{V1, V2, V3, N}(v1, v2, v3)
        end
    (PVector{ToroidalCS, ToroidalCS, N}(v1::V1, v2::V2, v3::V3) where {N, V1, V2, V3}) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:361 =#
            ToroidalCSPVector{V1, V2, V3, N}(v1, v2, v3)
        end
end
begin
    struct CartesianCS_ToroidalCSPVector{V1, V2, V3, P1, P2, P3, N} <: PVector{V1, V2, V3, P1, P2, P3, N, CartesianCS, ToroidalCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        x::V1
        y::V2
        z::V3
        r::P1
        θ::P2
        ϕ::P3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    (PVector{CartesianCS, ToroidalCS, N}(v1::V1, v2::V2, v3::V3, p1::P1, p2::P2, p3::P3; kw...) where {N, V1, V2, V3, P1, P2, P3}) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:379 =#
            CartesianCS_ToroidalCSPVector{V1, V2, V3, P1, P2, P3, N}(v1, v2, v3, p1, p2, p3)
        end
end
begin
    struct CylindricalCS_CartesianCSPVector{V1, V2, V3, P1, P2, P3, N} <: PVector{V1, V2, V3, P1, P2, P3, N, CylindricalCS, CartesianCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        r::V1
        θ::V2
        z::V3
        x::P1
        y::P2
        _z::P3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    (PVector{CylindricalCS, CartesianCS, N}(v1::V1, v2::V2, v3::V3, p1::P1, p2::P2, p3::P3; kw...) where {N, V1, V2, V3, P1, P2, P3}) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:379 =#
            CylindricalCS_CartesianCSPVector{V1, V2, V3, P1, P2, P3, N}(v1, v2, v3, p1, p2, p3)
        end
end
begin
    struct ParallelFieldAlignedCS_CartesianCSPVector{V1, V2, V3, P1, P2, P3, N} <: PVector{V1, V2, V3, P1, P2, P3, N, ParallelFieldAlignedCS, CartesianCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        ǁ::V1
        ⊥::V2
        ʌ::V3
        x::P1
        y::P2
        z::P3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    (PVector{ParallelFieldAlignedCS, CartesianCS, N}(v1::V1, v2::V2, v3::V3, p1::P1, p2::P2, p3::P3; kw...) where {N, V1, V2, V3, P1, P2, P3}) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:379 =#
            ParallelFieldAlignedCS_CartesianCSPVector{V1, V2, V3, P1, P2, P3, N}(v1, v2, v3, p1, p2, p3)
        end
end
begin
    struct SphericalCS_CartesianCSPVector{V1, V2, V3, P1, P2, P3, N} <: PVector{V1, V2, V3, P1, P2, P3, N, SphericalCS, CartesianCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        r::V1
        θ::V2
        Ψ::V3
        x::P1
        y::P2
        z::P3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    (PVector{SphericalCS, CartesianCS, N}(v1::V1, v2::V2, v3::V3, p1::P1, p2::P2, p3::P3; kw...) where {N, V1, V2, V3, P1, P2, P3}) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:379 =#
            SphericalCS_CartesianCSPVector{V1, V2, V3, P1, P2, P3, N}(v1, v2, v3, p1, p2, p3)
        end
end
begin
    struct PoloidalFieldAlignedCS_CartesianCSPVector{V1, V2, V3, P1, P2, P3, N} <: PVector{V1, V2, V3, P1, P2, P3, N, PoloidalFieldAlignedCS, CartesianCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        x::V1
        y::V2
        ϕ::V3
        _x::P1
        _y::P2
        z::P3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    (PVector{PoloidalFieldAlignedCS, CartesianCS, N}(v1::V1, v2::V2, v3::V3, p1::P1, p2::P2, p3::P3; kw...) where {N, V1, V2, V3, P1, P2, P3}) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:379 =#
            PoloidalFieldAlignedCS_CartesianCSPVector{V1, V2, V3, P1, P2, P3, N}(v1, v2, v3, p1, p2, p3)
        end
end
begin
    struct PseudoToroidalCS_CartesianCSPVector{V1, V2, V3, P1, P2, P3, N} <: PVector{V1, V2, V3, P1, P2, P3, N, PseudoToroidalCS, CartesianCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        R::V1
        Z::V2
        ϕ::V3
        x::P1
        y::P2
        z::P3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    (PVector{PseudoToroidalCS, CartesianCS, N}(v1::V1, v2::V2, v3::V3, p1::P1, p2::P2, p3::P3; kw...) where {N, V1, V2, V3, P1, P2, P3}) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:379 =#
            PseudoToroidalCS_CartesianCSPVector{V1, V2, V3, P1, P2, P3, N}(v1, v2, v3, p1, p2, p3)
        end
end
begin
    struct ToroidalCS_CartesianCSPVector{V1, V2, V3, P1, P2, P3, N} <: PVector{V1, V2, V3, P1, P2, P3, N, ToroidalCS, CartesianCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        r::V1
        θ::V2
        ϕ::V3
        x::P1
        y::P2
        z::P3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    (PVector{ToroidalCS, CartesianCS, N}(v1::V1, v2::V2, v3::V3, p1::P1, p2::P2, p3::P3; kw...) where {N, V1, V2, V3, P1, P2, P3}) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:379 =#
            ToroidalCS_CartesianCSPVector{V1, V2, V3, P1, P2, P3, N}(v1, v2, v3, p1, p2, p3)
        end
end
begin
    struct CartesianCSPVector{V1, V2, V3, N} <: PVector{V1, V2, V3, V1, V2, V3, N, CartesianCS, CartesianCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        x::V1
        y::V2
        z::V3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    (PVector{CartesianCS, N}(v1::V1, v2::V2, v3::V3) where {N, V1, V2, V3}) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:360 =#
            CartesianCSPVector{V1, V2, V3, N}(v1, v2, v3)
        end
    (PVector{CartesianCS, CartesianCS, N}(v1::V1, v2::V2, v3::V3) where {N, V1, V2, V3}) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:361 =#
            CartesianCSPVector{V1, V2, V3, N}(v1, v2, v3)
        end
end
begin
    (PTensorComponent{CylindricalCS, N}(v1::V1, v2::V2, v3::V3) where {N, V1, V2, V3}) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:398 =#
            CylindricalCSPTensorComponent{V1, V2, V3, N}(v1, v2, v3)
        end
    struct CylindricalCSPTensorComponent{V1, V2, V3, N} <: PTensorComponent{V1, V2, V3, N, CylindricalCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        r::V1
        θ::V2
        z::V3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    struct CylindricalCSPTensor{V1 <: Union{Missing, CylindricalCSPTensorComponent}, V2 <: Union{Missing, CylindricalCSPTensorComponent}, V3 <: Union{Missing, CylindricalCSPTensorComponent}, N} <: PTensor{V1, V2, V3, N, CylindricalCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        r::V1
        θ::V2
        z::V3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    (PTensor{CylindricalCS, N}(v1::V1, v2::V2, v3::V3) where {N, V1, V2, V3}) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:412 =#
            CylindricalCSPTensor{V1, V2, V3, N}(v1, v2, v3)
        end
end
begin
    (PTensorComponent{ParallelFieldAlignedCS, N}(v1::V1, v2::V2, v3::V3) where {N, V1, V2, V3}) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:398 =#
            ParallelFieldAlignedCSPTensorComponent{V1, V2, V3, N}(v1, v2, v3)
        end
    struct ParallelFieldAlignedCSPTensorComponent{V1, V2, V3, N} <: PTensorComponent{V1, V2, V3, N, ParallelFieldAlignedCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        ǁ::V1
        ⊥::V2
        ʌ::V3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    struct ParallelFieldAlignedCSPTensor{V1 <: Union{Missing, ParallelFieldAlignedCSPTensorComponent}, V2 <: Union{Missing, ParallelFieldAlignedCSPTensorComponent}, V3 <: Union{Missing, ParallelFieldAlignedCSPTensorComponent}, N} <: PTensor{V1, V2, V3, N, ParallelFieldAlignedCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        ǁ::V1
        ⊥::V2
        ʌ::V3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    (PTensor{ParallelFieldAlignedCS, N}(v1::V1, v2::V2, v3::V3) where {N, V1, V2, V3}) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:412 =#
            ParallelFieldAlignedCSPTensor{V1, V2, V3, N}(v1, v2, v3)
        end
end
begin
    (PTensorComponent{SphericalCS, N}(v1::V1, v2::V2, v3::V3) where {N, V1, V2, V3}) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:398 =#
            SphericalCSPTensorComponent{V1, V2, V3, N}(v1, v2, v3)
        end
    struct SphericalCSPTensorComponent{V1, V2, V3, N} <: PTensorComponent{V1, V2, V3, N, SphericalCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        r::V1
        θ::V2
        Ψ::V3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    struct SphericalCSPTensor{V1 <: Union{Missing, SphericalCSPTensorComponent}, V2 <: Union{Missing, SphericalCSPTensorComponent}, V3 <: Union{Missing, SphericalCSPTensorComponent}, N} <: PTensor{V1, V2, V3, N, SphericalCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        r::V1
        θ::V2
        Ψ::V3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    (PTensor{SphericalCS, N}(v1::V1, v2::V2, v3::V3) where {N, V1, V2, V3}) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:412 =#
            SphericalCSPTensor{V1, V2, V3, N}(v1, v2, v3)
        end
end
begin
    (PTensorComponent{PoloidalFieldAlignedCS, N}(v1::V1, v2::V2, v3::V3) where {N, V1, V2, V3}) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:398 =#
            PoloidalFieldAlignedCSPTensorComponent{V1, V2, V3, N}(v1, v2, v3)
        end
    struct PoloidalFieldAlignedCSPTensorComponent{V1, V2, V3, N} <: PTensorComponent{V1, V2, V3, N, PoloidalFieldAlignedCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        x::V1
        y::V2
        ϕ::V3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    struct PoloidalFieldAlignedCSPTensor{V1 <: Union{Missing, PoloidalFieldAlignedCSPTensorComponent}, V2 <: Union{Missing, PoloidalFieldAlignedCSPTensorComponent}, V3 <: Union{Missing, PoloidalFieldAlignedCSPTensorComponent}, N} <: PTensor{V1, V2, V3, N, PoloidalFieldAlignedCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        x::V1
        y::V2
        ϕ::V3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    (PTensor{PoloidalFieldAlignedCS, N}(v1::V1, v2::V2, v3::V3) where {N, V1, V2, V3}) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:412 =#
            PoloidalFieldAlignedCSPTensor{V1, V2, V3, N}(v1, v2, v3)
        end
end
begin
    (PTensorComponent{PseudoToroidalCS, N}(v1::V1, v2::V2, v3::V3) where {N, V1, V2, V3}) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:398 =#
            PseudoToroidalCSPTensorComponent{V1, V2, V3, N}(v1, v2, v3)
        end
    struct PseudoToroidalCSPTensorComponent{V1, V2, V3, N} <: PTensorComponent{V1, V2, V3, N, PseudoToroidalCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        R::V1
        Z::V2
        ϕ::V3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    struct PseudoToroidalCSPTensor{V1 <: Union{Missing, PseudoToroidalCSPTensorComponent}, V2 <: Union{Missing, PseudoToroidalCSPTensorComponent}, V3 <: Union{Missing, PseudoToroidalCSPTensorComponent}, N} <: PTensor{V1, V2, V3, N, PseudoToroidalCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        R::V1
        Z::V2
        ϕ::V3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    (PTensor{PseudoToroidalCS, N}(v1::V1, v2::V2, v3::V3) where {N, V1, V2, V3}) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:412 =#
            PseudoToroidalCSPTensor{V1, V2, V3, N}(v1, v2, v3)
        end
end
begin
    (PTensorComponent{ToroidalCS, N}(v1::V1, v2::V2, v3::V3) where {N, V1, V2, V3}) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:398 =#
            ToroidalCSPTensorComponent{V1, V2, V3, N}(v1, v2, v3)
        end
    struct ToroidalCSPTensorComponent{V1, V2, V3, N} <: PTensorComponent{V1, V2, V3, N, ToroidalCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        r::V1
        θ::V2
        ϕ::V3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    struct ToroidalCSPTensor{V1 <: Union{Missing, ToroidalCSPTensorComponent}, V2 <: Union{Missing, ToroidalCSPTensorComponent}, V3 <: Union{Missing, ToroidalCSPTensorComponent}, N} <: PTensor{V1, V2, V3, N, ToroidalCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        r::V1
        θ::V2
        ϕ::V3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    (PTensor{ToroidalCS, N}(v1::V1, v2::V2, v3::V3) where {N, V1, V2, V3}) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:412 =#
            ToroidalCSPTensor{V1, V2, V3, N}(v1, v2, v3)
        end
end
begin
    (PTensorComponent{CartesianCS, N}(v1::V1, v2::V2, v3::V3) where {N, V1, V2, V3}) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:398 =#
            CartesianCSPTensorComponent{V1, V2, V3, N}(v1, v2, v3)
        end
    struct CartesianCSPTensorComponent{V1, V2, V3, N} <: PTensorComponent{V1, V2, V3, N, CartesianCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        x::V1
        y::V2
        z::V3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    struct CartesianCSPTensor{V1 <: Union{Missing, CartesianCSPTensorComponent}, V2 <: Union{Missing, CartesianCSPTensorComponent}, V3 <: Union{Missing, CartesianCSPTensorComponent}, N} <: PTensor{V1, V2, V3, N, CartesianCS}
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
        x::V1
        y::V2
        z::V3
        #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
    end
    (PTensor{CartesianCS, N}(v1::V1, v2::V2, v3::V3) where {N, V1, V2, V3}) = begin
            #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:412 =#
            CartesianCSPTensor{V1, V2, V3, N}(v1, v2, v3)
        end
end
