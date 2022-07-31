
using Infinity

abstract type OrderedGraphRepresentation{T} end

#
struct AdjacencyMatrix{T} <: OrderedGraphRepresentation{T}
    matrix::Array{InfExtendedReal{T},2}
    n::Unsigned
end

#
struct AdjacencyList{T} <: OrderedGraphRepresentation
    n::Unsigned
end

function getNVertices(a::OrderedGraphRepresentation{T})
    return a.n
end






struct Graph{T} where T<:Real
    representation::OrderedGraphRepresentation{T}
end

function getNVertices(g::Graph{T})
    return getNVertices(g.representation)
end

function disconnect!(g::Graph{T}, i::Unsigned,j::Unsigned)

end

function getConnection(g::Graph{T},i::Unsigned,j::Unisgned)

end

function connect!(g::Graph{T},i::Unsigned,j::Unsigned)

end

# Algorithm for shortest path for all combinations of vertices
function FloydWarshall(g::Graph{T})
    size = getNVertices(g)
    matrix = [InfExtendedReal{T}(∞) for _ in 1..size for _ in 1..size]

    return matrix
end

function Djikstra(g::Graph{T})

end





struct GraphImage

end

function saveAs(g::GraphImage,path)

end