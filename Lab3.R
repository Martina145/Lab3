package.skeleton(list = c("euclidean","dijkstra"), name = "Lab")

euclidean <- function(x,y) {
  if ( is.numeric(x) != TRUE || is.numeric(y) != TRUE) {
    stop("Not numeric arguments")
  }
  while (x != y) {
    if (x > y) {
      x <- x - y
    } else {
      y <- y - x
    }
  }
  return(x)
}


<<<<<<< HEAD

=======
>>>>>>> e9b3466cad6c974b45c3fb2d60272048d0053c24
dijkstra <- function(graph,init_node) {
  if (is.numeric(init_node)==FALSE || class(graph)!="data.frame" || colnames(graph)!=c("v1", "v2", "w") || init_node>length(unique(graph$v1))) {
    stop()
  }

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
    I1 <-graph[graph$v1 == u,]
    for (j in  I1$v2) {
      
       I3 <- I1[I1$v2 == j,]
       alt <- dist[u] + I3$w
       if ( alt < dist[j]) {
         dist[j] <- alt
         prev[j] <- u
       }
     }
  }
  return(dist)
}

install.packages("Lab3")
library("Lab3")
