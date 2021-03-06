% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pkginstall.R
\docType{package}
\name{pkginstall-package}
\alias{pkginstall}
\alias{pkginstall-package}
\title{Intall Packages from Local Files}
\description{
Provides a replacement for \code{utils::install.packages(repo = NULL)}.
I.e. it builds binary packages from source packages, and extracts the
compressed archives into the package library.
}
\section{Features}{


Compared to \code{utils::install.packages()} it
\itemize{
\item Has robust support for installing packages in parallel.
\item Fails immediately when the first package fails when installing
multiple packages, rather than returning a warning.
\item Uses the same code paths on all platforms, rather than similar (but
not identical) code paths.
\item Succeeds or fails atomically. Either the complete package is installed
or it fails with an informative error message.
\item Has additional tests for package validity before installing
\item Always uses per-package lock files, to protect against simultaneous
installation.
\item Has a robust set of tests, to ensure correctness and ease debugging
installation issues.
}
}

\section{Locking}{


pkginstall uses the \code{install.lock} option. If this is set to \code{FALSE},
then no locking is performed. For all other values (including if the
option is unset or is \code{NULL}), per-package lock files are used, via the
filelock package.
}

\author{
\strong{Maintainer}: Jim Hester \email{james.f.hester@gmail.com}

Authors:
\itemize{
  \item Gábor Gábor \email{csardi.gabor@gmail.com}
}

}
