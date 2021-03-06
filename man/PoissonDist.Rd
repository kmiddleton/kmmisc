% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/PoissonDist.R
\name{PoissonDist}
\alias{PoissonDist}
\title{Plot a Poisson distribution.}
\usage{
PoissonDist(lambda)
}
\arguments{
\item{lambda}{Numeric. Mean number of successes per interval.}
}
\description{
Plot a Poisson distribution given the mean number of successes per
interval (\code{lambda}).
}
\examples{
\dontrun{
if require(manipulate){
  manipulate( poisson_dist(lambda), lambda = slider(0, 30) )
}}
}
\author{
Kevin Middleton (\email{middletonk@missouri.edu})
}
