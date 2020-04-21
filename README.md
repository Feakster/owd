# owd: Open Working Directory

<!-- Badges -->
[![license](https://img.shields.io/badge/license-MIT-blue)](https://choosealicense.com/licenses/mit/)
[![platform-support](https://img.shields.io/badge/R-%3E%3D2.13.0-blue)](https://www.r-project.org/)
[![lifecycle](https://img.shields.io/badge/lifecycle-stable-brightgreen.svg)](https://www.tidyverse.org/lifecycle/#stable)
<!--[![CRANstatus](https://www.r-pkg.org/badges/version/owd)](https://cran.r-project.org/package=owd)-->
<!--[![CRANdownloads](https://cranlogs.r-pkg.org/badges/grand-total/owd)](https://cran.r-project.org/package=owd)-->

## Description

R package to open the current working directory (or a given directory path) in your computer&rsquo;s file manager.

## Compatibility

The package may be installed on any version of R since 2.13.0, in which the `normalizePath()` function was moved from the _utils_ package to the _base_ package. Technically, for versions 2.13.0 > R &ge; 2.1.0 the package may still be installed if the end user was to checkout the Git repository and add one line containing &ldquo;`Imports: utils`&rdquo; to the DESCRIPTION file, and one line containing &ldquo;`importsFrom(utils, normalizePath)`&rdquo; to the NAMESPACE file.

## Installation

You can install the development version from [GitHub](https://github.com/Feakster/owd) with:

```R
if (!{'devtools' %in% installed.packages()}) install.packages('devtools')
devtools::install_github('Feakster/owd')
```

## Examples

Some simple use cases:

```R
## Load package namespace
library(owd)

## Open current working directory
owd()

## Open a directory ('foo') using a relative path
owd('foo') # or...
owd('./foo')

## Making use of tilde expansion
owd('~/foo')
```

## Known issues

See [Issues](https://github.com/Feakster/owd/issues) on the owd GitHub repository.
