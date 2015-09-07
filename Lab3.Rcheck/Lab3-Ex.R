pkgname <- "Lab3"
source(file.path(R.home("share"), "R", "examples-header.R"))
options(warn = 1)
base::assign(".ExTimings", "Lab3-Ex.timings", pos = 'CheckExEnv')
base::cat("name\tuser\tsystem\telapsed\n", file=base::get(".ExTimings", pos = 'CheckExEnv'))
base::assign(".format_ptime",
function(x) {
  if(!is.na(x[4L])) x[1L] <- x[1L] + x[4L]
  if(!is.na(x[5L])) x[2L] <- x[2L] + x[5L]
  options(OutDec = '.')
  format(x[1L:3L], digits = 7L)
},
pos = 'CheckExEnv')

### * </HEADER>
library('Lab3')

base::assign(".oldSearch", base::search(), pos = 'CheckExEnv')
cleanEx()
nameEx("Lab3-package")
### * Lab3-package

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: Lab3-package
### Title: What the package does (short line) ~~ package title ~~
### Aliases: Lab3-package Lab3
### Keywords: package

### ** Examples

~~ simple examples of the most important functions ~~



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("Lab3-package", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("dijkstra")
### * dijkstra

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: dijkstra
### Title: ~~function to do ... ~~
### Aliases: dijkstra
### Keywords: ~kwd1 ~kwd2

### ** Examples

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



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("dijkstra", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("euclidian")
### * euclidian

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: euclidian
### Title: ~~function to do ... ~~
### Aliases: euclidian
### Keywords: ~kwd1 ~kwd2

### ** Examples

##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (x, y) 
{
    if (is.numeric(x) != TRUE || is.numeric(y) != TRUE) {
        stop("Not numeric arguments")
    }
    while (x != y) {
        if (x > y) {
            x <- x - y
        }
        else {
            y <- y - x
        }
    }
    return(x)
  }



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("euclidian", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
### * <FOOTER>
###
options(digits = 7L)
base::cat("Time elapsed: ", proc.time() - base::get("ptime", pos = 'CheckExEnv'),"\n")
grDevices::dev.off()
###
### Local variables: ***
### mode: outline-minor ***
### outline-regexp: "\\(> \\)?### [*]+" ***
### End: ***
quit('no')
