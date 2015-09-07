\name{dijkstra}
\alias{dijkstra}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
dijkstra(graph, init_node)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{graph}{
%%     ~~Describe \code{graph} here~~
}
  \item{init_node}{
%%     ~~Describe \code{init_node} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
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
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

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
