euclidian <-
function(x,y) {
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
