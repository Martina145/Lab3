\name{dijkstra}
\alias{dijkstra}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
  Dijkstra algorithm
}
\description{
Computes the dijkstra algorithm.
}
\usage{
dijkstra(graph, init_node)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{graph}{
A dataframe containing the edges of the graph (v1 & v2) and the weights.
}
  \item{init_node}{
The initial node as a scalar.
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
Returns the shortest path from the initial node to all other nodes as a numeric vector.
}
\references{
https://en.wikipedia.org/wiki/Dijkstra\%27s_algorithm
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
## dijkstra(wiki_graph, 1)

## The function is currently defined as
function (graph, init_node) 
{
    dist <- NULL
    prev <- NULL
    dist[init_node] <- 0
    prev[init_node] <- NA
    nodes <- unique(graph$v1)
    for (i in nodes) {
        if (i != init_node) {
            dist[i] <- Inf
            prev[i] <- NA
        }
    }
    while (length(nodes) != 0) {
        min = Inf
        u = nodes[1]
        for (n in nodes) {
            if (dist[n] < min) {
                min = dist[n]
                u = n
            }
        }
        nodes <- nodes[nodes != u]
        I1 <- graph[graph$v1 == u, ]
        for (j in I1$v2) {
            I3 <- I1[I1$v2 == j, ]
            alt <- dist[u] + I3$w
            if (alt < dist[j]) {
                dist[j] <- alt
                prev[j] <- u
            }
        }
        return(dist)
    }
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
