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


wiki_graph <- data.frame(v1=c(1,1,1,2,2,2,3,3,3,3,4,4,4,5,5,6,6,6),
             v2=c(2,3,6,1,3,4,1,2,4,6,2,3,5,4,6,1,3,5),
             w=c(7,9,14,7,10,15,9,10,11,2,15,11,6,6,9,14,2,9))


save(wiki_graph,file = "wiki_graph.RData")
