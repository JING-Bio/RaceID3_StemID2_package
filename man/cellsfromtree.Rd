% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/StemID.R
\name{cellsfromtree}
\alias{cellsfromtree}
\title{Extract Cells on Differentiation Trajectory}
\usage{
cellsfromtree(object, z)
}
\arguments{
\item{object}{\code{Ltree} class object.}

\item{z}{Vector of valid cluster numbers ordered along the trajectory.}
}
\value{
A list ot four components:
  \item{f}{a vector of cells ids ordered along the trajectory defined by \code{z}.}
  \item{g}{a vector of integer number. Number \code{i} indicates that a cell resides on the link between the i-th and (i+1)-th cluster in \code{z}.}
}
\description{
This function extracts a vector of cells on a given differentiation trajectory in pseudo-temporal order determined from the projection coordinates.
}
\examples{
sc <- SCseq(intestinalDataSmall)
sc <- filterdata(sc)
sc <- compdist(sc)
sc <- clustexp(sc)
sc <- findoutliers(sc)
sc <- comptsne(sc)
ltr <- Ltree(sc)
ltr <- compentropy(ltr)
ltr <- projcells(ltr)
ltr <- lineagegraph(ltr)
ltr <- comppvalue(ltr)
x <- cellsfromtree(ltr,c(1,3,6,2))
}
