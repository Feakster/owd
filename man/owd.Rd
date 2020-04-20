\name{owd}
\alias{owd}
\title{Open Working Directory}
\description{
  \code{owd} opens the current working directory (or a given directory path) in your computer's file manager.
}
\usage{
owd(dir)
}
\arguments{
  \item{dir}{A character string indicating a directory path. Defaults to \code{'.'}, indicating the current working directory.}
}
\value{
  \code{owd} does not return any value in \R. However, it will return an error if a directory path is passed to it that does not exist, or that \R does not have sufficient privledges to access.
}
\note{
  Tilde expansion (see \link{path.expand}) is performed on directory paths.
}
\author{
  Benjamin G. Feakins, \email{benjamin.feakins@ndph.ox.ac.uk}
}
\seealso{
  \code{\link{getwd}} for the path of the current working directory.
  
  \code{\link{list.files}} for the \emph{contents} of a directory.
}
\examples{
## Open current working directory
\dontrun{owd()}

## Open a directory ('foo') using a relative path
\dontrun{owd('foo')} # or...
\dontrun{owd('./foo')}

## Making use of tilde expansion
\dontrun{owd('~/foo')}
}
\keyword{IO}
\keyword{file}
\keyword{utilities}
\concept{file manager}
