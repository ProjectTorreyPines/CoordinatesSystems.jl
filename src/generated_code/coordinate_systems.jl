#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:53 =#
struct ParallelComponent{T} <: Component{T}
    #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:54 =#
    s::Symbol
end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:56 =#
struct ParallelCoordinate{T} <: Coordinate{T}
    #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:57 =#
    s::Symbol
end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:59 =#
Component{:parallel}() = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:59 =#
        ParallelComponent{Generic}()
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:60 =#
Coordinate{:parallel}() = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:60 =#
        ParallelCoordinate{Generic}()
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:61 =#
ParallelComponent(args...) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:61 =#
        ParallelComponent{Generic}(args...)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:62 =#
ParallelCoordinate(args...) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:62 =#
        ParallelCoordinate{Generic}(args...)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:63 =#
(ParallelCoordinate{T}() where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:63 =#
        ParallelCoordinate{T}(:parallel)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:64 =#
(ParallelComponent{T}() where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:64 =#
        ParallelComponent{T}(:parallel)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:65 =#
((c::ParallelComponent{T})(E::Type) where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:65 =#
        ParallelComponent{E}
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:66 =#
((c::ParallelCoordinate{T})(E::Type) where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:66 =#
        ParallelCoordinate{E}
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:67 =#
export ParallelComponent, ParallelCoordinate
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:53 =#
struct ToroidalComponent{T} <: Component{T}
    #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:54 =#
    s::Symbol
end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:56 =#
struct ToroidalCoordinate{T} <: Coordinate{T}
    #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:57 =#
    s::Symbol
end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:59 =#
Component{:toroidal}() = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:59 =#
        ToroidalComponent{Generic}()
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:60 =#
Coordinate{:toroidal}() = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:60 =#
        ToroidalCoordinate{Generic}()
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:61 =#
ToroidalComponent(args...) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:61 =#
        ToroidalComponent{Generic}(args...)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:62 =#
ToroidalCoordinate(args...) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:62 =#
        ToroidalCoordinate{Generic}(args...)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:63 =#
(ToroidalCoordinate{T}() where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:63 =#
        ToroidalCoordinate{T}(:toroidal)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:64 =#
(ToroidalComponent{T}() where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:64 =#
        ToroidalComponent{T}(:toroidal)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:65 =#
((c::ToroidalComponent{T})(E::Type) where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:65 =#
        ToroidalComponent{E}
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:66 =#
((c::ToroidalCoordinate{T})(E::Type) where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:66 =#
        ToroidalCoordinate{E}
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:67 =#
export ToroidalComponent, ToroidalCoordinate
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:53 =#
struct CrossfieldComponent{T} <: Component{T}
    #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:54 =#
    s::Symbol
end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:56 =#
struct CrossfieldCoordinate{T} <: Coordinate{T}
    #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:57 =#
    s::Symbol
end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:59 =#
Component{:crossfield}() = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:59 =#
        CrossfieldComponent{Generic}()
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:60 =#
Coordinate{:crossfield}() = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:60 =#
        CrossfieldCoordinate{Generic}()
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:61 =#
CrossfieldComponent(args...) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:61 =#
        CrossfieldComponent{Generic}(args...)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:62 =#
CrossfieldCoordinate(args...) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:62 =#
        CrossfieldCoordinate{Generic}(args...)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:63 =#
(CrossfieldCoordinate{T}() where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:63 =#
        CrossfieldCoordinate{T}(:crossfield)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:64 =#
(CrossfieldComponent{T}() where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:64 =#
        CrossfieldComponent{T}(:crossfield)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:65 =#
((c::CrossfieldComponent{T})(E::Type) where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:65 =#
        CrossfieldComponent{E}
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:66 =#
((c::CrossfieldCoordinate{T})(E::Type) where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:66 =#
        CrossfieldCoordinate{E}
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:67 =#
export CrossfieldComponent, CrossfieldCoordinate
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:53 =#
struct DiamagneticComponent{T} <: Component{T}
    #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:54 =#
    s::Symbol
end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:56 =#
struct DiamagneticCoordinate{T} <: Coordinate{T}
    #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:57 =#
    s::Symbol
end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:59 =#
Component{:diamagnetic}() = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:59 =#
        DiamagneticComponent{Generic}()
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:60 =#
Coordinate{:diamagnetic}() = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:60 =#
        DiamagneticCoordinate{Generic}()
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:61 =#
DiamagneticComponent(args...) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:61 =#
        DiamagneticComponent{Generic}(args...)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:62 =#
DiamagneticCoordinate(args...) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:62 =#
        DiamagneticCoordinate{Generic}(args...)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:63 =#
(DiamagneticCoordinate{T}() where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:63 =#
        DiamagneticCoordinate{T}(:diamagnetic)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:64 =#
(DiamagneticComponent{T}() where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:64 =#
        DiamagneticComponent{T}(:diamagnetic)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:65 =#
((c::DiamagneticComponent{T})(E::Type) where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:65 =#
        DiamagneticComponent{E}
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:66 =#
((c::DiamagneticCoordinate{T})(E::Type) where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:66 =#
        DiamagneticCoordinate{E}
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:67 =#
export DiamagneticComponent, DiamagneticCoordinate
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:53 =#
struct PoloidalComponent{T} <: Component{T}
    #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:54 =#
    s::Symbol
end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:56 =#
struct PoloidalCoordinate{T} <: Coordinate{T}
    #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:57 =#
    s::Symbol
end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:59 =#
Component{:poloidal}() = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:59 =#
        PoloidalComponent{Generic}()
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:60 =#
Coordinate{:poloidal}() = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:60 =#
        PoloidalCoordinate{Generic}()
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:61 =#
PoloidalComponent(args...) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:61 =#
        PoloidalComponent{Generic}(args...)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:62 =#
PoloidalCoordinate(args...) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:62 =#
        PoloidalCoordinate{Generic}(args...)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:63 =#
(PoloidalCoordinate{T}() where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:63 =#
        PoloidalCoordinate{T}(:poloidal)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:64 =#
(PoloidalComponent{T}() where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:64 =#
        PoloidalComponent{T}(:poloidal)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:65 =#
((c::PoloidalComponent{T})(E::Type) where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:65 =#
        PoloidalComponent{E}
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:66 =#
((c::PoloidalCoordinate{T})(E::Type) where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:66 =#
        PoloidalCoordinate{E}
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:67 =#
export PoloidalComponent, PoloidalCoordinate
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:53 =#
struct AzimuthalComponent{T} <: Component{T}
    #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:54 =#
    s::Symbol
end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:56 =#
struct AzimuthalCoordinate{T} <: Coordinate{T}
    #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:57 =#
    s::Symbol
end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:59 =#
Component{:azimuthal}() = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:59 =#
        AzimuthalComponent{Generic}()
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:60 =#
Coordinate{:azimuthal}() = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:60 =#
        AzimuthalCoordinate{Generic}()
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:61 =#
AzimuthalComponent(args...) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:61 =#
        AzimuthalComponent{Generic}(args...)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:62 =#
AzimuthalCoordinate(args...) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:62 =#
        AzimuthalCoordinate{Generic}(args...)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:63 =#
(AzimuthalCoordinate{T}() where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:63 =#
        AzimuthalCoordinate{T}(:azimuthal)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:64 =#
(AzimuthalComponent{T}() where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:64 =#
        AzimuthalComponent{T}(:azimuthal)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:65 =#
((c::AzimuthalComponent{T})(E::Type) where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:65 =#
        AzimuthalComponent{E}
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:66 =#
((c::AzimuthalCoordinate{T})(E::Type) where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:66 =#
        AzimuthalCoordinate{E}
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:67 =#
export AzimuthalComponent, AzimuthalCoordinate
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:53 =#
struct RadialComponent{T} <: Component{T}
    #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:54 =#
    s::Symbol
end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:56 =#
struct RadialCoordinate{T} <: Coordinate{T}
    #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:57 =#
    s::Symbol
end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:59 =#
Component{:radial}() = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:59 =#
        RadialComponent{Generic}()
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:60 =#
Coordinate{:radial}() = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:60 =#
        RadialCoordinate{Generic}()
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:61 =#
RadialComponent(args...) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:61 =#
        RadialComponent{Generic}(args...)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:62 =#
RadialCoordinate(args...) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:62 =#
        RadialCoordinate{Generic}(args...)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:63 =#
(RadialCoordinate{T}() where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:63 =#
        RadialCoordinate{T}(:radial)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:64 =#
(RadialComponent{T}() where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:64 =#
        RadialComponent{T}(:radial)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:65 =#
((c::RadialComponent{T})(E::Type) where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:65 =#
        RadialComponent{E}
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:66 =#
((c::RadialCoordinate{T})(E::Type) where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:66 =#
        RadialCoordinate{E}
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:67 =#
export RadialComponent, RadialCoordinate
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:53 =#
struct VerticalComponent{T} <: Component{T}
    #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:54 =#
    s::Symbol
end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:56 =#
struct VerticalCoordinate{T} <: Coordinate{T}
    #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:57 =#
    s::Symbol
end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:59 =#
Component{:vertical}() = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:59 =#
        VerticalComponent{Generic}()
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:60 =#
Coordinate{:vertical}() = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:60 =#
        VerticalCoordinate{Generic}()
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:61 =#
VerticalComponent(args...) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:61 =#
        VerticalComponent{Generic}(args...)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:62 =#
VerticalCoordinate(args...) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:62 =#
        VerticalCoordinate{Generic}(args...)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:63 =#
(VerticalCoordinate{T}() where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:63 =#
        VerticalCoordinate{T}(:vertical)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:64 =#
(VerticalComponent{T}() where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:64 =#
        VerticalComponent{T}(:vertical)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:65 =#
((c::VerticalComponent{T})(E::Type) where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:65 =#
        VerticalComponent{E}
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:66 =#
((c::VerticalCoordinate{T})(E::Type) where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:66 =#
        VerticalCoordinate{E}
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:67 =#
export VerticalComponent, VerticalCoordinate
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:53 =#
struct XComponent{T} <: Component{T}
    #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:54 =#
    s::Symbol
end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:56 =#
struct XCoordinate{T} <: Coordinate{T}
    #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:57 =#
    s::Symbol
end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:59 =#
Component{:x}() = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:59 =#
        XComponent{Generic}()
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:60 =#
Coordinate{:x}() = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:60 =#
        XCoordinate{Generic}()
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:61 =#
XComponent(args...) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:61 =#
        XComponent{Generic}(args...)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:62 =#
XCoordinate(args...) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:62 =#
        XCoordinate{Generic}(args...)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:63 =#
(XCoordinate{T}() where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:63 =#
        XCoordinate{T}(:x)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:64 =#
(XComponent{T}() where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:64 =#
        XComponent{T}(:x)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:65 =#
((c::XComponent{T})(E::Type) where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:65 =#
        XComponent{E}
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:66 =#
((c::XCoordinate{T})(E::Type) where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:66 =#
        XCoordinate{E}
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:67 =#
export XComponent, XCoordinate
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:53 =#
struct YComponent{T} <: Component{T}
    #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:54 =#
    s::Symbol
end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:56 =#
struct YCoordinate{T} <: Coordinate{T}
    #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:57 =#
    s::Symbol
end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:59 =#
Component{:y}() = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:59 =#
        YComponent{Generic}()
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:60 =#
Coordinate{:y}() = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:60 =#
        YCoordinate{Generic}()
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:61 =#
YComponent(args...) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:61 =#
        YComponent{Generic}(args...)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:62 =#
YCoordinate(args...) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:62 =#
        YCoordinate{Generic}(args...)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:63 =#
(YCoordinate{T}() where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:63 =#
        YCoordinate{T}(:y)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:64 =#
(YComponent{T}() where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:64 =#
        YComponent{T}(:y)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:65 =#
((c::YComponent{T})(E::Type) where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:65 =#
        YComponent{E}
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:66 =#
((c::YCoordinate{T})(E::Type) where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:66 =#
        YCoordinate{E}
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:67 =#
export YComponent, YCoordinate
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:53 =#
struct ZComponent{T} <: Component{T}
    #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:54 =#
    s::Symbol
end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:56 =#
struct ZCoordinate{T} <: Coordinate{T}
    #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:57 =#
    s::Symbol
end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:59 =#
Component{:z}() = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:59 =#
        ZComponent{Generic}()
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:60 =#
Coordinate{:z}() = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:60 =#
        ZCoordinate{Generic}()
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:61 =#
ZComponent(args...) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:61 =#
        ZComponent{Generic}(args...)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:62 =#
ZCoordinate(args...) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:62 =#
        ZCoordinate{Generic}(args...)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:63 =#
(ZCoordinate{T}() where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:63 =#
        ZCoordinate{T}(:z)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:64 =#
(ZComponent{T}() where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:64 =#
        ZComponent{T}(:z)
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:65 =#
((c::ZComponent{T})(E::Type) where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:65 =#
        ZComponent{E}
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:66 =#
((c::ZCoordinate{T})(E::Type) where T) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:66 =#
        ZCoordinate{E}
    end
#= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:67 =#
export ZComponent, ZCoordinate
struct CartesianCS <: CoordinatesSystem
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    x::XComponent
    y::YComponent
    z::ZComponent
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
export CartesianCS
CartesianCS() = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:186 =#
        CartesianCS((T() for T = fieldtypes(CartesianCS))...)
    end
sdoc(::Type{CartesianCS}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:187 =#
        "cartesian"
    end
sdoc(::CartesianCS) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:188 =#
        "cartesian"
    end
(c::XComponent)(v::AbstractCSVector{CartesianCS}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:190 =#
        getfield(v, 1)
    end
(c::YComponent)(v::AbstractCSVector{CartesianCS}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:190 =#
        getfield(v, 2)
    end
(c::ZComponent)(v::AbstractCSVector{CartesianCS}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:190 =#
        getfield(v, 3)
    end
(c::XCoordinate)(v::AbstractCSVector{CartesianCS}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:194 =#
        getfield(v, 1)
    end
(c::YCoordinate)(v::AbstractCSVector{CartesianCS}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:194 =#
        getfield(v, 2)
    end
(c::ZCoordinate)(v::AbstractCSVector{CartesianCS}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:194 =#
        getfield(v, 3)
    end
struct CartesianCSPVector{E1, E2, E3} <: PVector{E1, E2, E3, CartesianCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    x::E1
    y::E2
    z::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
PVector{CartesianCS}(x, y, z) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        CartesianCSPVector(x, y, z)
    end
(e::CartesianCSPVector)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct CartesianCSPhysicsCoordinates{E1, E2, E3} <: PhysicsCoordinates{E1, E2, E3, CartesianCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    x::E1
    y::E2
    z::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
PhysicsCoordinates{CartesianCS}(x, y, z) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        CartesianCSPhysicsCoordinates(x, y, z)
    end
(e::CartesianCSPhysicsCoordinates)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct CartesianCSBasisVector{E1, E2, E3} <: BasisVector{E1, E2, E3, CartesianCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    x::E1
    y::E2
    z::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
BasisVector{CartesianCS}(x, y, z) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        CartesianCSBasisVector(x, y, z)
    end
(e::CartesianCSBasisVector)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct CartesianCSUnitBasisVector{E1, E2, E3} <: UnitBasisVector{E1, E2, E3, CartesianCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    x::E1
    y::E2
    z::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
UnitBasisVector{CartesianCS}(x, y, z) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        CartesianCSUnitBasisVector(x, y, z)
    end
(e::CartesianCSUnitBasisVector)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct CartesianCSBasisVectors{E1, E2, E3} <: BasisVectors{E1, E2, E3, CartesianCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    x::E1
    y::E2
    z::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
BasisVectors{CartesianCS}(x, y, z) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        CartesianCSBasisVectors(x, y, z)
    end
(e::CartesianCSBasisVectors)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct CartesianCSUnitBasisVectors{E1, E2, E3} <: UnitBasisVectors{E1, E2, E3, CartesianCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    x::E1
    y::E2
    z::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
UnitBasisVectors{CartesianCS}(x, y, z) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        CartesianCSUnitBasisVectors(x, y, z)
    end
(e::CartesianCSUnitBasisVectors)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct CartesianCSBasisChangeComponent{E1, E2, E3} <: BasisChangeComponent{E1, E2, E3, CartesianCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    x::E1
    y::E2
    z::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
BasisChangeComponent{CartesianCS}(x, y, z) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        CartesianCSBasisChangeComponent(x, y, z)
    end
(e::CartesianCSBasisChangeComponent)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct CartesianCSMetricTensorComponent{E1, E2, E3} <: MetricTensorComponent{E1, E2, E3, CartesianCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    x::E1
    y::E2
    z::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
MetricTensorComponent{CartesianCS}(x, y, z) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        CartesianCSMetricTensorComponent(x, y, z)
    end
(e::CartesianCSMetricTensorComponent)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct CartesianCSTensorComponent{E1, E2, E3} <: TensorComponent{E1, E2, E3, CartesianCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    x::E1
    y::E2
    z::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
TensorComponent{CartesianCS}(x, y, z) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        CartesianCSTensorComponent(x, y, z)
    end
(e::CartesianCSTensorComponent)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct CartesianCSPTensorComponent{E1, E2, E3} <: PTensorComponent{E1, E2, E3, CartesianCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    x::E1
    y::E2
    z::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
PTensorComponent{CartesianCS}(x, y, z) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        CartesianCSPTensorComponent(x, y, z)
    end
(e::CartesianCSPTensorComponent)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct CartesianCSMetricTensor{E1, E2, E3} <: MetricTensor{E1, E2, E3, CartesianCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    x::E1
    y::E2
    z::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
MetricTensor{CartesianCS}(x, y, z) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        CartesianCSMetricTensor(x, y, z)
    end
(e::CartesianCSMetricTensor)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct CartesianCSTensor{E1, E2, E3} <: Tensor{E1, E2, E3, CartesianCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    x::E1
    y::E2
    z::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
Tensor{CartesianCS}(x, y, z) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        CartesianCSTensor(x, y, z)
    end
(e::CartesianCSTensor)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct CartesianCSPTensor{E1, E2, E3} <: PTensor{E1, E2, E3, CartesianCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    x::E1
    y::E2
    z::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
PTensor{CartesianCS}(x, y, z) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        CartesianCSPTensor(x, y, z)
    end
(e::CartesianCSPTensor)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct CartesianCSDiagonalTensor{E1, E2, E3} <: DiagonalTensor{E1, E2, E3, CartesianCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    x::E1
    y::E2
    z::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
DiagonalTensor{CartesianCS}(x, y, z) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        CartesianCSDiagonalTensor(x, y, z)
    end
(e::CartesianCSDiagonalTensor)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct CartesianCSPDiagonalTensor{E1, E2, E3} <: PDiagonalTensor{E1, E2, E3, CartesianCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    x::E1
    y::E2
    z::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
PDiagonalTensor{CartesianCS}(x, y, z) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        CartesianCSPDiagonalTensor(x, y, z)
    end
(e::CartesianCSPDiagonalTensor)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct ParallelFieldAlignedCS <: CoordinatesSystem
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    ǁ::ParallelComponent
    ⊥::CrossfieldComponent
    ʌ::DiamagneticComponent
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
export ParallelFieldAlignedCS
ParallelFieldAlignedCS() = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:186 =#
        ParallelFieldAlignedCS((T() for T = fieldtypes(ParallelFieldAlignedCS))...)
    end
sdoc(::Type{ParallelFieldAlignedCS}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:187 =#
        "parallelfieldaligned"
    end
sdoc(::ParallelFieldAlignedCS) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:188 =#
        "parallelfieldaligned"
    end
(c::ParallelComponent)(v::AbstractCSVector{ParallelFieldAlignedCS}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:190 =#
        getfield(v, 1)
    end
(c::CrossfieldComponent)(v::AbstractCSVector{ParallelFieldAlignedCS}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:190 =#
        getfield(v, 2)
    end
(c::DiamagneticComponent)(v::AbstractCSVector{ParallelFieldAlignedCS}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:190 =#
        getfield(v, 3)
    end
(c::ParallelCoordinate)(v::AbstractCSVector{ParallelFieldAlignedCS}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:194 =#
        getfield(v, 1)
    end
(c::CrossfieldCoordinate)(v::AbstractCSVector{ParallelFieldAlignedCS}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:194 =#
        getfield(v, 2)
    end
(c::DiamagneticCoordinate)(v::AbstractCSVector{ParallelFieldAlignedCS}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:194 =#
        getfield(v, 3)
    end
struct ParallelFieldAlignedCSPVector{E1, E2, E3} <: PVector{E1, E2, E3, ParallelFieldAlignedCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    ǁ::E1
    ⊥::E2
    ʌ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
PVector{ParallelFieldAlignedCS}(ǁ, ⊥, ʌ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        ParallelFieldAlignedCSPVector(ǁ, ⊥, ʌ)
    end
(e::ParallelFieldAlignedCSPVector)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct ParallelFieldAlignedCSPhysicsCoordinates{E1, E2, E3} <: PhysicsCoordinates{E1, E2, E3, ParallelFieldAlignedCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    ǁ::E1
    ⊥::E2
    ʌ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
PhysicsCoordinates{ParallelFieldAlignedCS}(ǁ, ⊥, ʌ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        ParallelFieldAlignedCSPhysicsCoordinates(ǁ, ⊥, ʌ)
    end
(e::ParallelFieldAlignedCSPhysicsCoordinates)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct ParallelFieldAlignedCSBasisVector{E1, E2, E3} <: BasisVector{E1, E2, E3, ParallelFieldAlignedCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    ǁ::E1
    ⊥::E2
    ʌ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
BasisVector{ParallelFieldAlignedCS}(ǁ, ⊥, ʌ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        ParallelFieldAlignedCSBasisVector(ǁ, ⊥, ʌ)
    end
(e::ParallelFieldAlignedCSBasisVector)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct ParallelFieldAlignedCSUnitBasisVector{E1, E2, E3} <: UnitBasisVector{E1, E2, E3, ParallelFieldAlignedCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    ǁ::E1
    ⊥::E2
    ʌ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
UnitBasisVector{ParallelFieldAlignedCS}(ǁ, ⊥, ʌ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        ParallelFieldAlignedCSUnitBasisVector(ǁ, ⊥, ʌ)
    end
(e::ParallelFieldAlignedCSUnitBasisVector)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct ParallelFieldAlignedCSBasisVectors{E1, E2, E3} <: BasisVectors{E1, E2, E3, ParallelFieldAlignedCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    ǁ::E1
    ⊥::E2
    ʌ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
BasisVectors{ParallelFieldAlignedCS}(ǁ, ⊥, ʌ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        ParallelFieldAlignedCSBasisVectors(ǁ, ⊥, ʌ)
    end
(e::ParallelFieldAlignedCSBasisVectors)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct ParallelFieldAlignedCSUnitBasisVectors{E1, E2, E3} <: UnitBasisVectors{E1, E2, E3, ParallelFieldAlignedCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    ǁ::E1
    ⊥::E2
    ʌ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
UnitBasisVectors{ParallelFieldAlignedCS}(ǁ, ⊥, ʌ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        ParallelFieldAlignedCSUnitBasisVectors(ǁ, ⊥, ʌ)
    end
(e::ParallelFieldAlignedCSUnitBasisVectors)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct ParallelFieldAlignedCSBasisChangeComponent{E1, E2, E3} <: BasisChangeComponent{E1, E2, E3, ParallelFieldAlignedCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    ǁ::E1
    ⊥::E2
    ʌ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
BasisChangeComponent{ParallelFieldAlignedCS}(ǁ, ⊥, ʌ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        ParallelFieldAlignedCSBasisChangeComponent(ǁ, ⊥, ʌ)
    end
(e::ParallelFieldAlignedCSBasisChangeComponent)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct ParallelFieldAlignedCSMetricTensorComponent{E1, E2, E3} <: MetricTensorComponent{E1, E2, E3, ParallelFieldAlignedCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    ǁ::E1
    ⊥::E2
    ʌ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
MetricTensorComponent{ParallelFieldAlignedCS}(ǁ, ⊥, ʌ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        ParallelFieldAlignedCSMetricTensorComponent(ǁ, ⊥, ʌ)
    end
(e::ParallelFieldAlignedCSMetricTensorComponent)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct ParallelFieldAlignedCSTensorComponent{E1, E2, E3} <: TensorComponent{E1, E2, E3, ParallelFieldAlignedCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    ǁ::E1
    ⊥::E2
    ʌ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
TensorComponent{ParallelFieldAlignedCS}(ǁ, ⊥, ʌ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        ParallelFieldAlignedCSTensorComponent(ǁ, ⊥, ʌ)
    end
(e::ParallelFieldAlignedCSTensorComponent)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct ParallelFieldAlignedCSPTensorComponent{E1, E2, E3} <: PTensorComponent{E1, E2, E3, ParallelFieldAlignedCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    ǁ::E1
    ⊥::E2
    ʌ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
PTensorComponent{ParallelFieldAlignedCS}(ǁ, ⊥, ʌ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        ParallelFieldAlignedCSPTensorComponent(ǁ, ⊥, ʌ)
    end
(e::ParallelFieldAlignedCSPTensorComponent)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct ParallelFieldAlignedCSMetricTensor{E1, E2, E3} <: MetricTensor{E1, E2, E3, ParallelFieldAlignedCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    ǁ::E1
    ⊥::E2
    ʌ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
MetricTensor{ParallelFieldAlignedCS}(ǁ, ⊥, ʌ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        ParallelFieldAlignedCSMetricTensor(ǁ, ⊥, ʌ)
    end
(e::ParallelFieldAlignedCSMetricTensor)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct ParallelFieldAlignedCSTensor{E1, E2, E3} <: Tensor{E1, E2, E3, ParallelFieldAlignedCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    ǁ::E1
    ⊥::E2
    ʌ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
Tensor{ParallelFieldAlignedCS}(ǁ, ⊥, ʌ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        ParallelFieldAlignedCSTensor(ǁ, ⊥, ʌ)
    end
(e::ParallelFieldAlignedCSTensor)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct ParallelFieldAlignedCSPTensor{E1, E2, E3} <: PTensor{E1, E2, E3, ParallelFieldAlignedCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    ǁ::E1
    ⊥::E2
    ʌ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
PTensor{ParallelFieldAlignedCS}(ǁ, ⊥, ʌ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        ParallelFieldAlignedCSPTensor(ǁ, ⊥, ʌ)
    end
(e::ParallelFieldAlignedCSPTensor)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct ParallelFieldAlignedCSDiagonalTensor{E1, E2, E3} <: DiagonalTensor{E1, E2, E3, ParallelFieldAlignedCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    ǁ::E1
    ⊥::E2
    ʌ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
DiagonalTensor{ParallelFieldAlignedCS}(ǁ, ⊥, ʌ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        ParallelFieldAlignedCSDiagonalTensor(ǁ, ⊥, ʌ)
    end
(e::ParallelFieldAlignedCSDiagonalTensor)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct ParallelFieldAlignedCSPDiagonalTensor{E1, E2, E3} <: PDiagonalTensor{E1, E2, E3, ParallelFieldAlignedCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    ǁ::E1
    ⊥::E2
    ʌ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
PDiagonalTensor{ParallelFieldAlignedCS}(ǁ, ⊥, ʌ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        ParallelFieldAlignedCSPDiagonalTensor(ǁ, ⊥, ʌ)
    end
(e::ParallelFieldAlignedCSPDiagonalTensor)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct PoloidalFieldAlignedCS <: CoordinatesSystem
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    x::PoloidalComponent
    y::CrossfieldComponent
    ϕ::ToroidalComponent
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
export PoloidalFieldAlignedCS
PoloidalFieldAlignedCS() = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:186 =#
        PoloidalFieldAlignedCS((T() for T = fieldtypes(PoloidalFieldAlignedCS))...)
    end
sdoc(::Type{PoloidalFieldAlignedCS}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:187 =#
        "poloidalfieldaligned"
    end
sdoc(::PoloidalFieldAlignedCS) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:188 =#
        "poloidalfieldaligned"
    end
(c::PoloidalComponent)(v::AbstractCSVector{PoloidalFieldAlignedCS}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:190 =#
        getfield(v, 1)
    end
(c::CrossfieldComponent)(v::AbstractCSVector{PoloidalFieldAlignedCS}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:190 =#
        getfield(v, 2)
    end
(c::ToroidalComponent)(v::AbstractCSVector{PoloidalFieldAlignedCS}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:190 =#
        getfield(v, 3)
    end
(c::PoloidalCoordinate)(v::AbstractCSVector{PoloidalFieldAlignedCS}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:194 =#
        getfield(v, 1)
    end
(c::CrossfieldCoordinate)(v::AbstractCSVector{PoloidalFieldAlignedCS}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:194 =#
        getfield(v, 2)
    end
(c::ToroidalCoordinate)(v::AbstractCSVector{PoloidalFieldAlignedCS}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:194 =#
        getfield(v, 3)
    end
struct PoloidalFieldAlignedCSPVector{E1, E2, E3} <: PVector{E1, E2, E3, PoloidalFieldAlignedCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    x::E1
    y::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
PVector{PoloidalFieldAlignedCS}(x, y, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        PoloidalFieldAlignedCSPVector(x, y, ϕ)
    end
(e::PoloidalFieldAlignedCSPVector)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct PoloidalFieldAlignedCSPhysicsCoordinates{E1, E2, E3} <: PhysicsCoordinates{E1, E2, E3, PoloidalFieldAlignedCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    x::E1
    y::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
PhysicsCoordinates{PoloidalFieldAlignedCS}(x, y, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        PoloidalFieldAlignedCSPhysicsCoordinates(x, y, ϕ)
    end
(e::PoloidalFieldAlignedCSPhysicsCoordinates)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct PoloidalFieldAlignedCSBasisVector{E1, E2, E3} <: BasisVector{E1, E2, E3, PoloidalFieldAlignedCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    x::E1
    y::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
BasisVector{PoloidalFieldAlignedCS}(x, y, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        PoloidalFieldAlignedCSBasisVector(x, y, ϕ)
    end
(e::PoloidalFieldAlignedCSBasisVector)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct PoloidalFieldAlignedCSUnitBasisVector{E1, E2, E3} <: UnitBasisVector{E1, E2, E3, PoloidalFieldAlignedCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    x::E1
    y::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
UnitBasisVector{PoloidalFieldAlignedCS}(x, y, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        PoloidalFieldAlignedCSUnitBasisVector(x, y, ϕ)
    end
(e::PoloidalFieldAlignedCSUnitBasisVector)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct PoloidalFieldAlignedCSBasisVectors{E1, E2, E3} <: BasisVectors{E1, E2, E3, PoloidalFieldAlignedCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    x::E1
    y::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
BasisVectors{PoloidalFieldAlignedCS}(x, y, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        PoloidalFieldAlignedCSBasisVectors(x, y, ϕ)
    end
(e::PoloidalFieldAlignedCSBasisVectors)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct PoloidalFieldAlignedCSUnitBasisVectors{E1, E2, E3} <: UnitBasisVectors{E1, E2, E3, PoloidalFieldAlignedCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    x::E1
    y::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
UnitBasisVectors{PoloidalFieldAlignedCS}(x, y, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        PoloidalFieldAlignedCSUnitBasisVectors(x, y, ϕ)
    end
(e::PoloidalFieldAlignedCSUnitBasisVectors)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct PoloidalFieldAlignedCSBasisChangeComponent{E1, E2, E3} <: BasisChangeComponent{E1, E2, E3, PoloidalFieldAlignedCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    x::E1
    y::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
BasisChangeComponent{PoloidalFieldAlignedCS}(x, y, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        PoloidalFieldAlignedCSBasisChangeComponent(x, y, ϕ)
    end
(e::PoloidalFieldAlignedCSBasisChangeComponent)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct PoloidalFieldAlignedCSMetricTensorComponent{E1, E2, E3} <: MetricTensorComponent{E1, E2, E3, PoloidalFieldAlignedCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    x::E1
    y::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
MetricTensorComponent{PoloidalFieldAlignedCS}(x, y, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        PoloidalFieldAlignedCSMetricTensorComponent(x, y, ϕ)
    end
(e::PoloidalFieldAlignedCSMetricTensorComponent)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct PoloidalFieldAlignedCSTensorComponent{E1, E2, E3} <: TensorComponent{E1, E2, E3, PoloidalFieldAlignedCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    x::E1
    y::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
TensorComponent{PoloidalFieldAlignedCS}(x, y, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        PoloidalFieldAlignedCSTensorComponent(x, y, ϕ)
    end
(e::PoloidalFieldAlignedCSTensorComponent)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct PoloidalFieldAlignedCSPTensorComponent{E1, E2, E3} <: PTensorComponent{E1, E2, E3, PoloidalFieldAlignedCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    x::E1
    y::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
PTensorComponent{PoloidalFieldAlignedCS}(x, y, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        PoloidalFieldAlignedCSPTensorComponent(x, y, ϕ)
    end
(e::PoloidalFieldAlignedCSPTensorComponent)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct PoloidalFieldAlignedCSMetricTensor{E1, E2, E3} <: MetricTensor{E1, E2, E3, PoloidalFieldAlignedCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    x::E1
    y::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
MetricTensor{PoloidalFieldAlignedCS}(x, y, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        PoloidalFieldAlignedCSMetricTensor(x, y, ϕ)
    end
(e::PoloidalFieldAlignedCSMetricTensor)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct PoloidalFieldAlignedCSTensor{E1, E2, E3} <: Tensor{E1, E2, E3, PoloidalFieldAlignedCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    x::E1
    y::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
Tensor{PoloidalFieldAlignedCS}(x, y, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        PoloidalFieldAlignedCSTensor(x, y, ϕ)
    end
(e::PoloidalFieldAlignedCSTensor)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct PoloidalFieldAlignedCSPTensor{E1, E2, E3} <: PTensor{E1, E2, E3, PoloidalFieldAlignedCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    x::E1
    y::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
PTensor{PoloidalFieldAlignedCS}(x, y, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        PoloidalFieldAlignedCSPTensor(x, y, ϕ)
    end
(e::PoloidalFieldAlignedCSPTensor)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct PoloidalFieldAlignedCSDiagonalTensor{E1, E2, E3} <: DiagonalTensor{E1, E2, E3, PoloidalFieldAlignedCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    x::E1
    y::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
DiagonalTensor{PoloidalFieldAlignedCS}(x, y, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        PoloidalFieldAlignedCSDiagonalTensor(x, y, ϕ)
    end
(e::PoloidalFieldAlignedCSDiagonalTensor)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct PoloidalFieldAlignedCSPDiagonalTensor{E1, E2, E3} <: PDiagonalTensor{E1, E2, E3, PoloidalFieldAlignedCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    x::E1
    y::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
PDiagonalTensor{PoloidalFieldAlignedCS}(x, y, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        PoloidalFieldAlignedCSPDiagonalTensor(x, y, ϕ)
    end
(e::PoloidalFieldAlignedCSPDiagonalTensor)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct CylindricalCS <: CoordinatesSystem
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::RadialComponent
    θ::PoloidalComponent
    z::ZComponent
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
export CylindricalCS
CylindricalCS() = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:186 =#
        CylindricalCS((T() for T = fieldtypes(CylindricalCS))...)
    end
sdoc(::Type{CylindricalCS}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:187 =#
        "cylindrical"
    end
sdoc(::CylindricalCS) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:188 =#
        "cylindrical"
    end
(c::RadialComponent)(v::AbstractCSVector{CylindricalCS}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:190 =#
        getfield(v, 1)
    end
(c::PoloidalComponent)(v::AbstractCSVector{CylindricalCS}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:190 =#
        getfield(v, 2)
    end
(c::ZComponent)(v::AbstractCSVector{CylindricalCS}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:190 =#
        getfield(v, 3)
    end
(c::RadialCoordinate)(v::AbstractCSVector{CylindricalCS}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:194 =#
        getfield(v, 1)
    end
(c::PoloidalCoordinate)(v::AbstractCSVector{CylindricalCS}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:194 =#
        getfield(v, 2)
    end
(c::ZCoordinate)(v::AbstractCSVector{CylindricalCS}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:194 =#
        getfield(v, 3)
    end
struct CylindricalCSPVector{E1, E2, E3} <: PVector{E1, E2, E3, CylindricalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    z::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
PVector{CylindricalCS}(r, θ, z) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        CylindricalCSPVector(r, θ, z)
    end
(e::CylindricalCSPVector)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct CylindricalCSPhysicsCoordinates{E1, E2, E3} <: PhysicsCoordinates{E1, E2, E3, CylindricalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    z::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
PhysicsCoordinates{CylindricalCS}(r, θ, z) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        CylindricalCSPhysicsCoordinates(r, θ, z)
    end
(e::CylindricalCSPhysicsCoordinates)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct CylindricalCSBasisVector{E1, E2, E3} <: BasisVector{E1, E2, E3, CylindricalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    z::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
BasisVector{CylindricalCS}(r, θ, z) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        CylindricalCSBasisVector(r, θ, z)
    end
(e::CylindricalCSBasisVector)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct CylindricalCSUnitBasisVector{E1, E2, E3} <: UnitBasisVector{E1, E2, E3, CylindricalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    z::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
UnitBasisVector{CylindricalCS}(r, θ, z) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        CylindricalCSUnitBasisVector(r, θ, z)
    end
(e::CylindricalCSUnitBasisVector)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct CylindricalCSBasisVectors{E1, E2, E3} <: BasisVectors{E1, E2, E3, CylindricalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    z::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
BasisVectors{CylindricalCS}(r, θ, z) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        CylindricalCSBasisVectors(r, θ, z)
    end
(e::CylindricalCSBasisVectors)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct CylindricalCSUnitBasisVectors{E1, E2, E3} <: UnitBasisVectors{E1, E2, E3, CylindricalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    z::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
UnitBasisVectors{CylindricalCS}(r, θ, z) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        CylindricalCSUnitBasisVectors(r, θ, z)
    end
(e::CylindricalCSUnitBasisVectors)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct CylindricalCSBasisChangeComponent{E1, E2, E3} <: BasisChangeComponent{E1, E2, E3, CylindricalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    z::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
BasisChangeComponent{CylindricalCS}(r, θ, z) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        CylindricalCSBasisChangeComponent(r, θ, z)
    end
(e::CylindricalCSBasisChangeComponent)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct CylindricalCSMetricTensorComponent{E1, E2, E3} <: MetricTensorComponent{E1, E2, E3, CylindricalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    z::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
MetricTensorComponent{CylindricalCS}(r, θ, z) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        CylindricalCSMetricTensorComponent(r, θ, z)
    end
(e::CylindricalCSMetricTensorComponent)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct CylindricalCSTensorComponent{E1, E2, E3} <: TensorComponent{E1, E2, E3, CylindricalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    z::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
TensorComponent{CylindricalCS}(r, θ, z) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        CylindricalCSTensorComponent(r, θ, z)
    end
(e::CylindricalCSTensorComponent)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct CylindricalCSPTensorComponent{E1, E2, E3} <: PTensorComponent{E1, E2, E3, CylindricalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    z::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
PTensorComponent{CylindricalCS}(r, θ, z) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        CylindricalCSPTensorComponent(r, θ, z)
    end
(e::CylindricalCSPTensorComponent)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct CylindricalCSMetricTensor{E1, E2, E3} <: MetricTensor{E1, E2, E3, CylindricalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    z::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
MetricTensor{CylindricalCS}(r, θ, z) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        CylindricalCSMetricTensor(r, θ, z)
    end
(e::CylindricalCSMetricTensor)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct CylindricalCSTensor{E1, E2, E3} <: Tensor{E1, E2, E3, CylindricalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    z::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
Tensor{CylindricalCS}(r, θ, z) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        CylindricalCSTensor(r, θ, z)
    end
(e::CylindricalCSTensor)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct CylindricalCSPTensor{E1, E2, E3} <: PTensor{E1, E2, E3, CylindricalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    z::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
PTensor{CylindricalCS}(r, θ, z) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        CylindricalCSPTensor(r, θ, z)
    end
(e::CylindricalCSPTensor)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct CylindricalCSDiagonalTensor{E1, E2, E3} <: DiagonalTensor{E1, E2, E3, CylindricalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    z::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
DiagonalTensor{CylindricalCS}(r, θ, z) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        CylindricalCSDiagonalTensor(r, θ, z)
    end
(e::CylindricalCSDiagonalTensor)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct CylindricalCSPDiagonalTensor{E1, E2, E3} <: PDiagonalTensor{E1, E2, E3, CylindricalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    z::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
PDiagonalTensor{CylindricalCS}(r, θ, z) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        CylindricalCSPDiagonalTensor(r, θ, z)
    end
(e::CylindricalCSPDiagonalTensor)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct SphericalCS <: CoordinatesSystem
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::RadialComponent
    θ::PoloidalComponent
    Ψ::AzimuthalComponent
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
export SphericalCS
SphericalCS() = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:186 =#
        SphericalCS((T() for T = fieldtypes(SphericalCS))...)
    end
sdoc(::Type{SphericalCS}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:187 =#
        "spherical"
    end
sdoc(::SphericalCS) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:188 =#
        "spherical"
    end
(c::RadialComponent)(v::AbstractCSVector{SphericalCS}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:190 =#
        getfield(v, 1)
    end
(c::PoloidalComponent)(v::AbstractCSVector{SphericalCS}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:190 =#
        getfield(v, 2)
    end
(c::AzimuthalComponent)(v::AbstractCSVector{SphericalCS}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:190 =#
        getfield(v, 3)
    end
(c::RadialCoordinate)(v::AbstractCSVector{SphericalCS}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:194 =#
        getfield(v, 1)
    end
(c::PoloidalCoordinate)(v::AbstractCSVector{SphericalCS}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:194 =#
        getfield(v, 2)
    end
(c::AzimuthalCoordinate)(v::AbstractCSVector{SphericalCS}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:194 =#
        getfield(v, 3)
    end
struct SphericalCSPVector{E1, E2, E3} <: PVector{E1, E2, E3, SphericalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    Ψ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
PVector{SphericalCS}(r, θ, Ψ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        SphericalCSPVector(r, θ, Ψ)
    end
(e::SphericalCSPVector)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct SphericalCSPhysicsCoordinates{E1, E2, E3} <: PhysicsCoordinates{E1, E2, E3, SphericalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    Ψ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
PhysicsCoordinates{SphericalCS}(r, θ, Ψ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        SphericalCSPhysicsCoordinates(r, θ, Ψ)
    end
(e::SphericalCSPhysicsCoordinates)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct SphericalCSBasisVector{E1, E2, E3} <: BasisVector{E1, E2, E3, SphericalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    Ψ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
BasisVector{SphericalCS}(r, θ, Ψ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        SphericalCSBasisVector(r, θ, Ψ)
    end
(e::SphericalCSBasisVector)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct SphericalCSUnitBasisVector{E1, E2, E3} <: UnitBasisVector{E1, E2, E3, SphericalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    Ψ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
UnitBasisVector{SphericalCS}(r, θ, Ψ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        SphericalCSUnitBasisVector(r, θ, Ψ)
    end
(e::SphericalCSUnitBasisVector)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct SphericalCSBasisVectors{E1, E2, E3} <: BasisVectors{E1, E2, E3, SphericalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    Ψ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
BasisVectors{SphericalCS}(r, θ, Ψ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        SphericalCSBasisVectors(r, θ, Ψ)
    end
(e::SphericalCSBasisVectors)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct SphericalCSUnitBasisVectors{E1, E2, E3} <: UnitBasisVectors{E1, E2, E3, SphericalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    Ψ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
UnitBasisVectors{SphericalCS}(r, θ, Ψ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        SphericalCSUnitBasisVectors(r, θ, Ψ)
    end
(e::SphericalCSUnitBasisVectors)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct SphericalCSBasisChangeComponent{E1, E2, E3} <: BasisChangeComponent{E1, E2, E3, SphericalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    Ψ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
BasisChangeComponent{SphericalCS}(r, θ, Ψ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        SphericalCSBasisChangeComponent(r, θ, Ψ)
    end
(e::SphericalCSBasisChangeComponent)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct SphericalCSMetricTensorComponent{E1, E2, E3} <: MetricTensorComponent{E1, E2, E3, SphericalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    Ψ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
MetricTensorComponent{SphericalCS}(r, θ, Ψ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        SphericalCSMetricTensorComponent(r, θ, Ψ)
    end
(e::SphericalCSMetricTensorComponent)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct SphericalCSTensorComponent{E1, E2, E3} <: TensorComponent{E1, E2, E3, SphericalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    Ψ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
TensorComponent{SphericalCS}(r, θ, Ψ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        SphericalCSTensorComponent(r, θ, Ψ)
    end
(e::SphericalCSTensorComponent)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct SphericalCSPTensorComponent{E1, E2, E3} <: PTensorComponent{E1, E2, E3, SphericalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    Ψ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
PTensorComponent{SphericalCS}(r, θ, Ψ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        SphericalCSPTensorComponent(r, θ, Ψ)
    end
(e::SphericalCSPTensorComponent)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct SphericalCSMetricTensor{E1, E2, E3} <: MetricTensor{E1, E2, E3, SphericalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    Ψ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
MetricTensor{SphericalCS}(r, θ, Ψ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        SphericalCSMetricTensor(r, θ, Ψ)
    end
(e::SphericalCSMetricTensor)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct SphericalCSTensor{E1, E2, E3} <: Tensor{E1, E2, E3, SphericalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    Ψ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
Tensor{SphericalCS}(r, θ, Ψ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        SphericalCSTensor(r, θ, Ψ)
    end
(e::SphericalCSTensor)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct SphericalCSPTensor{E1, E2, E3} <: PTensor{E1, E2, E3, SphericalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    Ψ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
PTensor{SphericalCS}(r, θ, Ψ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        SphericalCSPTensor(r, θ, Ψ)
    end
(e::SphericalCSPTensor)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct SphericalCSDiagonalTensor{E1, E2, E3} <: DiagonalTensor{E1, E2, E3, SphericalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    Ψ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
DiagonalTensor{SphericalCS}(r, θ, Ψ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        SphericalCSDiagonalTensor(r, θ, Ψ)
    end
(e::SphericalCSDiagonalTensor)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct SphericalCSPDiagonalTensor{E1, E2, E3} <: PDiagonalTensor{E1, E2, E3, SphericalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    Ψ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
PDiagonalTensor{SphericalCS}(r, θ, Ψ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        SphericalCSPDiagonalTensor(r, θ, Ψ)
    end
(e::SphericalCSPDiagonalTensor)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct ToroidalCS <: CoordinatesSystem
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::RadialComponent
    θ::PoloidalComponent
    ϕ::ToroidalComponent
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
export ToroidalCS
ToroidalCS() = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:186 =#
        ToroidalCS((T() for T = fieldtypes(ToroidalCS))...)
    end
sdoc(::Type{ToroidalCS}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:187 =#
        "toroidal"
    end
sdoc(::ToroidalCS) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:188 =#
        "toroidal"
    end
(c::RadialComponent)(v::AbstractCSVector{ToroidalCS}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:190 =#
        getfield(v, 1)
    end
(c::PoloidalComponent)(v::AbstractCSVector{ToroidalCS}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:190 =#
        getfield(v, 2)
    end
(c::ToroidalComponent)(v::AbstractCSVector{ToroidalCS}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:190 =#
        getfield(v, 3)
    end
(c::RadialCoordinate)(v::AbstractCSVector{ToroidalCS}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:194 =#
        getfield(v, 1)
    end
(c::PoloidalCoordinate)(v::AbstractCSVector{ToroidalCS}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:194 =#
        getfield(v, 2)
    end
(c::ToroidalCoordinate)(v::AbstractCSVector{ToroidalCS}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:194 =#
        getfield(v, 3)
    end
struct ToroidalCSPVector{E1, E2, E3} <: PVector{E1, E2, E3, ToroidalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
PVector{ToroidalCS}(r, θ, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        ToroidalCSPVector(r, θ, ϕ)
    end
(e::ToroidalCSPVector)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct ToroidalCSPhysicsCoordinates{E1, E2, E3} <: PhysicsCoordinates{E1, E2, E3, ToroidalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
PhysicsCoordinates{ToroidalCS}(r, θ, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        ToroidalCSPhysicsCoordinates(r, θ, ϕ)
    end
(e::ToroidalCSPhysicsCoordinates)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct ToroidalCSBasisVector{E1, E2, E3} <: BasisVector{E1, E2, E3, ToroidalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
BasisVector{ToroidalCS}(r, θ, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        ToroidalCSBasisVector(r, θ, ϕ)
    end
(e::ToroidalCSBasisVector)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct ToroidalCSUnitBasisVector{E1, E2, E3} <: UnitBasisVector{E1, E2, E3, ToroidalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
UnitBasisVector{ToroidalCS}(r, θ, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        ToroidalCSUnitBasisVector(r, θ, ϕ)
    end
(e::ToroidalCSUnitBasisVector)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct ToroidalCSBasisVectors{E1, E2, E3} <: BasisVectors{E1, E2, E3, ToroidalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
BasisVectors{ToroidalCS}(r, θ, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        ToroidalCSBasisVectors(r, θ, ϕ)
    end
(e::ToroidalCSBasisVectors)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct ToroidalCSUnitBasisVectors{E1, E2, E3} <: UnitBasisVectors{E1, E2, E3, ToroidalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
UnitBasisVectors{ToroidalCS}(r, θ, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        ToroidalCSUnitBasisVectors(r, θ, ϕ)
    end
(e::ToroidalCSUnitBasisVectors)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct ToroidalCSBasisChangeComponent{E1, E2, E3} <: BasisChangeComponent{E1, E2, E3, ToroidalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
BasisChangeComponent{ToroidalCS}(r, θ, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        ToroidalCSBasisChangeComponent(r, θ, ϕ)
    end
(e::ToroidalCSBasisChangeComponent)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct ToroidalCSMetricTensorComponent{E1, E2, E3} <: MetricTensorComponent{E1, E2, E3, ToroidalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
MetricTensorComponent{ToroidalCS}(r, θ, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        ToroidalCSMetricTensorComponent(r, θ, ϕ)
    end
(e::ToroidalCSMetricTensorComponent)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct ToroidalCSTensorComponent{E1, E2, E3} <: TensorComponent{E1, E2, E3, ToroidalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
TensorComponent{ToroidalCS}(r, θ, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        ToroidalCSTensorComponent(r, θ, ϕ)
    end
(e::ToroidalCSTensorComponent)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct ToroidalCSPTensorComponent{E1, E2, E3} <: PTensorComponent{E1, E2, E3, ToroidalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
PTensorComponent{ToroidalCS}(r, θ, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        ToroidalCSPTensorComponent(r, θ, ϕ)
    end
(e::ToroidalCSPTensorComponent)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct ToroidalCSMetricTensor{E1, E2, E3} <: MetricTensor{E1, E2, E3, ToroidalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
MetricTensor{ToroidalCS}(r, θ, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        ToroidalCSMetricTensor(r, θ, ϕ)
    end
(e::ToroidalCSMetricTensor)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct ToroidalCSTensor{E1, E2, E3} <: Tensor{E1, E2, E3, ToroidalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
Tensor{ToroidalCS}(r, θ, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        ToroidalCSTensor(r, θ, ϕ)
    end
(e::ToroidalCSTensor)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct ToroidalCSPTensor{E1, E2, E3} <: PTensor{E1, E2, E3, ToroidalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
PTensor{ToroidalCS}(r, θ, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        ToroidalCSPTensor(r, θ, ϕ)
    end
(e::ToroidalCSPTensor)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct ToroidalCSDiagonalTensor{E1, E2, E3} <: DiagonalTensor{E1, E2, E3, ToroidalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
DiagonalTensor{ToroidalCS}(r, θ, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        ToroidalCSDiagonalTensor(r, θ, ϕ)
    end
(e::ToroidalCSDiagonalTensor)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct ToroidalCSPDiagonalTensor{E1, E2, E3} <: PDiagonalTensor{E1, E2, E3, ToroidalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    r::E1
    θ::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
PDiagonalTensor{ToroidalCS}(r, θ, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        ToroidalCSPDiagonalTensor(r, θ, ϕ)
    end
(e::ToroidalCSPDiagonalTensor)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct PseudoToroidalCS <: CoordinatesSystem
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    R::RadialComponent
    Z::VerticalComponent
    ϕ::ToroidalComponent
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
export PseudoToroidalCS
PseudoToroidalCS() = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:186 =#
        PseudoToroidalCS((T() for T = fieldtypes(PseudoToroidalCS))...)
    end
sdoc(::Type{PseudoToroidalCS}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:187 =#
        "pseudotoroidal"
    end
sdoc(::PseudoToroidalCS) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:188 =#
        "pseudotoroidal"
    end
(c::RadialComponent)(v::AbstractCSVector{PseudoToroidalCS}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:190 =#
        getfield(v, 1)
    end
(c::VerticalComponent)(v::AbstractCSVector{PseudoToroidalCS}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:190 =#
        getfield(v, 2)
    end
(c::ToroidalComponent)(v::AbstractCSVector{PseudoToroidalCS}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:190 =#
        getfield(v, 3)
    end
(c::RadialCoordinate)(v::AbstractCSVector{PseudoToroidalCS}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:194 =#
        getfield(v, 1)
    end
(c::VerticalCoordinate)(v::AbstractCSVector{PseudoToroidalCS}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:194 =#
        getfield(v, 2)
    end
(c::ToroidalCoordinate)(v::AbstractCSVector{PseudoToroidalCS}) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:194 =#
        getfield(v, 3)
    end
struct PseudoToroidalCSPVector{E1, E2, E3} <: PVector{E1, E2, E3, PseudoToroidalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    R::E1
    Z::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
PVector{PseudoToroidalCS}(R, Z, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        PseudoToroidalCSPVector(R, Z, ϕ)
    end
(e::PseudoToroidalCSPVector)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct PseudoToroidalCSPhysicsCoordinates{E1, E2, E3} <: PhysicsCoordinates{E1, E2, E3, PseudoToroidalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    R::E1
    Z::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
PhysicsCoordinates{PseudoToroidalCS}(R, Z, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        PseudoToroidalCSPhysicsCoordinates(R, Z, ϕ)
    end
(e::PseudoToroidalCSPhysicsCoordinates)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct PseudoToroidalCSBasisVector{E1, E2, E3} <: BasisVector{E1, E2, E3, PseudoToroidalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    R::E1
    Z::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
BasisVector{PseudoToroidalCS}(R, Z, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        PseudoToroidalCSBasisVector(R, Z, ϕ)
    end
(e::PseudoToroidalCSBasisVector)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct PseudoToroidalCSUnitBasisVector{E1, E2, E3} <: UnitBasisVector{E1, E2, E3, PseudoToroidalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    R::E1
    Z::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
UnitBasisVector{PseudoToroidalCS}(R, Z, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        PseudoToroidalCSUnitBasisVector(R, Z, ϕ)
    end
(e::PseudoToroidalCSUnitBasisVector)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct PseudoToroidalCSBasisVectors{E1, E2, E3} <: BasisVectors{E1, E2, E3, PseudoToroidalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    R::E1
    Z::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
BasisVectors{PseudoToroidalCS}(R, Z, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        PseudoToroidalCSBasisVectors(R, Z, ϕ)
    end
(e::PseudoToroidalCSBasisVectors)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct PseudoToroidalCSUnitBasisVectors{E1, E2, E3} <: UnitBasisVectors{E1, E2, E3, PseudoToroidalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    R::E1
    Z::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
UnitBasisVectors{PseudoToroidalCS}(R, Z, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        PseudoToroidalCSUnitBasisVectors(R, Z, ϕ)
    end
(e::PseudoToroidalCSUnitBasisVectors)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct PseudoToroidalCSBasisChangeComponent{E1, E2, E3} <: BasisChangeComponent{E1, E2, E3, PseudoToroidalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    R::E1
    Z::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
BasisChangeComponent{PseudoToroidalCS}(R, Z, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        PseudoToroidalCSBasisChangeComponent(R, Z, ϕ)
    end
(e::PseudoToroidalCSBasisChangeComponent)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct PseudoToroidalCSMetricTensorComponent{E1, E2, E3} <: MetricTensorComponent{E1, E2, E3, PseudoToroidalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    R::E1
    Z::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
MetricTensorComponent{PseudoToroidalCS}(R, Z, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        PseudoToroidalCSMetricTensorComponent(R, Z, ϕ)
    end
(e::PseudoToroidalCSMetricTensorComponent)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct PseudoToroidalCSTensorComponent{E1, E2, E3} <: TensorComponent{E1, E2, E3, PseudoToroidalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    R::E1
    Z::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
TensorComponent{PseudoToroidalCS}(R, Z, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        PseudoToroidalCSTensorComponent(R, Z, ϕ)
    end
(e::PseudoToroidalCSTensorComponent)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct PseudoToroidalCSPTensorComponent{E1, E2, E3} <: PTensorComponent{E1, E2, E3, PseudoToroidalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    R::E1
    Z::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
PTensorComponent{PseudoToroidalCS}(R, Z, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        PseudoToroidalCSPTensorComponent(R, Z, ϕ)
    end
(e::PseudoToroidalCSPTensorComponent)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct PseudoToroidalCSMetricTensor{E1, E2, E3} <: MetricTensor{E1, E2, E3, PseudoToroidalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    R::E1
    Z::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
MetricTensor{PseudoToroidalCS}(R, Z, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        PseudoToroidalCSMetricTensor(R, Z, ϕ)
    end
(e::PseudoToroidalCSMetricTensor)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct PseudoToroidalCSTensor{E1, E2, E3} <: Tensor{E1, E2, E3, PseudoToroidalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    R::E1
    Z::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
Tensor{PseudoToroidalCS}(R, Z, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        PseudoToroidalCSTensor(R, Z, ϕ)
    end
(e::PseudoToroidalCSTensor)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct PseudoToroidalCSPTensor{E1, E2, E3} <: PTensor{E1, E2, E3, PseudoToroidalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    R::E1
    Z::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
PTensor{PseudoToroidalCS}(R, Z, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        PseudoToroidalCSPTensor(R, Z, ϕ)
    end
(e::PseudoToroidalCSPTensor)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct PseudoToroidalCSDiagonalTensor{E1, E2, E3} <: DiagonalTensor{E1, E2, E3, PseudoToroidalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    R::E1
    Z::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
DiagonalTensor{PseudoToroidalCS}(R, Z, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        PseudoToroidalCSDiagonalTensor(R, Z, ϕ)
    end
(e::PseudoToroidalCSDiagonalTensor)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
    end
struct PseudoToroidalCSPDiagonalTensor{E1, E2, E3} <: PDiagonalTensor{E1, E2, E3, PseudoToroidalCS}
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:58 =#
    R::E1
    Z::E2
    ϕ::E3
    #= /Users/jeromeguterl/.julia/packages/MacroTools/Cf2ok/src/structdef.jl:59 =#
end
PDiagonalTensor{PseudoToroidalCS}(R, Z, ϕ) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:87 =#
        PseudoToroidalCSPDiagonalTensor(R, Z, ϕ)
    end
(e::PseudoToroidalCSPDiagonalTensor)(a, b, c) = begin
        #= /Users/jeromeguterl/development/StataMater/CoordinatesSystems.jl/src/code_generator.jl:88 =#
        compute!(e, a, b, c)
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
