\name{euclidean}
\alias{euclidean}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
  Euclidean distance
}
\description{
Finds the greatest common divisor of two numbers.
}
\usage{
euclidean(x, y)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
Scalar or integer
}
  \item{y}{
Scalar or integer
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
Returns the greatest common divisor as an integer.
}
\references{
https://en.wikipedia.org/wiki/Euclidean_algorithm
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
## euclidian(123612, 13892347912)

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
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
