\name{NEWS}
\title{NEWS file for the owd pacakge}
\section{Changes in version 1.0.1}{
  \itemize{
    \item Added \R >= 2.13 as a requirement for installing the package. Before this version of \R, the \code{\link{normalizePath}} function was located in the \emph{utils} package.
  }
}
\section{Changes in version 1.0.0}{
  \itemize{
    \item Made use of \code{xdg-open} for non-macOS Unix-like systems to provide a simplified and more universal solution to finding the preferred file manager.
    \item Added the ability to specify a directory path to the \code{\link{owd}}. Sanity checks for the input path have also been added.
  }
}
\section{Changes in version 0.0.0.9000}{
  \itemize{
    \item Initial creation of a working version of the \emph{owd} package.
  }
}
