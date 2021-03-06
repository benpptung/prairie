% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/response.R
\name{as.response}
\alias{as.response}
\alias{as.response.character}
\alias{as.response.data.frame}
\alias{is.response}
\title{Coerce Objects to Response}
\usage{
as.response(x, ...)

\method{as.response}{character}(x, directory = "views", collapse = "\\n",
  ...)

\method{as.response}{data.frame}(x, ...)

is.response(x)
}
\arguments{
\item{x}{Any \R object.}

\item{directory}{A character string specifying the system folder of the file
\code{x}.}

\item{collapse}{A character string specifying how to collapse the lines read
from \code{x}.}

\item{\ldots}{Additional arguments passed on to methods.}
}
\description{
TBD, see jsonify.
}
\examples{
is.response(logical(1))
is.response(response())
is.response(3030)
}

