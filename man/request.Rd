% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/request.R
\name{request}
\alias{request}
\title{Create an HTTP Request}
\usage{
request()
}
\description{
Request objects store relevant information sent from the client to the server
as a part of an HTTP request. Request objects are not typically explicitly
created. Instead, a request object is passed as an argument to a route
handler.
}
\details{
Request objects contain the following information.

\subsection{method:}{

Most often \code{GET} or \code{POST} the method indicates what action to take
for a specified resource. This value may be accessed with \link{method}.

}

\subsection{uri:}{

The uri indicates the server resource requested by the client. A request
object's uri may be accessed with \link{uri}.

}

\subsection{query:}{

A request query is set of key value pairs following the uri. A query is
indicated by a ? and is, optionally, ended with a #. Query keys are case-
sensitive. A request object's query list may be accessed with \link{query}.
If an incoming request does not have a query string then \code{query} will
return an empty list.

}

\subsection{headers:}{

Request header fields may be accessed by treating a request object like a
list. Using [ or [[, one can get a single or multiple header field values.
Header fields are case-insensitive.

}

\subsection{body:}{

The body message of a request object may be retreived with \link{body}.

}
}
\examples{
# not much to see here
req <- request()
print(req)

# the request object is loaded with information
# from the client
printreq <- route(
  'GET',
  '^/print/request$',
  function(req) {
    print('Request received:')
    print(req)

    response()
  }
)

# create mockup
printreq_m <- mockup(printreq)

# now there's something to see
printreq_m('get', '/print/request')
printreq_m('get', '/print/request',
           headers = list(
             Accept = 'text/html',
             Host = 'with the most'
           )
)
}

