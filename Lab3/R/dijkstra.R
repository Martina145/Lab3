dijkstra <-
function(graph,init_node) {

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
