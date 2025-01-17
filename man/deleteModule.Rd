% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/deprecated.R
\name{deleteModule}
\alias{deleteModule}
\title{Delete module or modules}
\usage{
deleteModule(name, session = NULL, force = FALSE)
}
\arguments{
\item{name}{character string or vector of these. A module or vector of modules 
to remove. See modules() for options}

\item{session}{\code{\link{Session}} object}

\item{force}{logical. If \code{FALSE} (default), require confirmation from user
before deletion}
}
\description{
`r lifecycle::badge("deprecated")`
Please use \code{\link{removePackage}} instead.
}
\keyword{internal}
