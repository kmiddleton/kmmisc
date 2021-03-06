% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pgls.RMA.R
\name{pgls.RMA}
\alias{pgls.RMA}
\alias{print.pgls.RMA}
\title{Phylogenetic RMA regression}
\usage{
pgls.RMA(object, h0 = 1, param.CI = 0.95)
}
\arguments{
\item{object}{an object containing the results returned by
\code{pgls()}.}

\item{h0}{Null slope for hypothesis test. Defaults to 1.}

\item{param.CI}{Level for confidence interval. Defaults to 0.95.}
}
\value{
an object of class \code{pgls.rma}. Containing:
\item{b.RMA}{RMA slope estimate}
\item{lower}{lower bound of the confidence interval}
\item{upper}{upper bound of the confidence interval}
\item{b0}{intercept estimate}
\item{param.CI}{level for confidence interval}
\item{h0}{null slope for hypothesis test}
\item{df}{non-phylogenetic degrees of freedom}
\item{df_phyl}{phylogenetic degrees of freedom}
\item{t}{value of t-statistic for slope hypothesis test}
\item{P}{P-value for slope hypothesis test}
}
\description{
Phylogenetic RMA regression
}
\details{
This function performs phylogenetic RMA regression on an object of
class \code{pgls}. Confidence intervals and hypothesis tests for
arbitrary slopes are provided.
}
\author{
Kevin Middleton (\email{middletonk@missouri.edu}) with
  code modified from \code{phytools::phyl.RMA()} written by Liam
  Revell.
}
