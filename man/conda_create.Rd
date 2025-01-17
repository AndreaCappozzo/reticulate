% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/conda.R
\name{conda_create}
\alias{conda_create}
\title{Create a Conda Environment}
\usage{
conda_create(
  envname = NULL,
  packages = NULL,
  ...,
  forge = TRUE,
  channel = character(),
  environment = NULL,
  conda = "auto",
  python_version = NULL
)
}
\arguments{
\item{envname}{The name of, or path to, a conda environment.}

\item{packages}{A character vector, indicating package names which should be
installed or removed. Use \verb{python=<version>} to request the installation
of a specific version of Python.}

\item{...}{Optional arguments, reserved for future expansion.}

\item{forge}{Boolean; include the \href{https://conda-forge.org/}{conda-forge}
repository?}

\item{channel}{An optional character vector of conda channels to include.
When specified, the \code{forge} argument is ignored. If you need to
specify multiple channels, including the conda Forge, you can use
\verb{c("conda-forge", <other channels>)}.}

\item{environment}{The path to an environment definition, generated via
(for example) \code{\link[=conda_export]{conda_export()}}, or via \verb{conda env export}. When provided,
the conda environment will be created using this environment definition,
and other arguments will be ignored.}

\item{conda}{The path to a \code{conda} executable. Use \code{"auto"} to allow
\code{reticulate} to automatically find an appropriate \code{conda} binary. See
\code{\link[=conda_binary]{conda_binary()}} for more details on how \code{reticulate} tries to resolve
the \code{conda} executable.}

\item{python_version}{The version of Python to be used in this conda
environment. The associated Python package from conda will be requested
as \code{python={python_version}}. When \code{NULL}, the default \code{python} package
will be used instead. For example, use \code{python_version = "3.6"} to request
that the conda environment be created with a copy of Python 3.6. This
argument will be ignored if \code{python} is specified as part of the \code{packages}
argument, for backwards compatibility.}
}
\value{
The path to the Python binary associated with the newly-created
conda environment.
}
\description{
Create a new conda environment.
}
\seealso{
Other conda tools: 
\code{\link{conda_binary}()},
\code{\link{conda_export}()},
\code{\link{conda_install}()},
\code{\link{conda_list}()},
\code{\link{conda_python}()},
\code{\link{conda_remove}()},
\code{\link{conda_version}()}
}
\concept{conda tools}
