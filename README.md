# owd: Open Working Directory

<!-- Badges -->
[![license](https://img.shields.io/badge/license-MIT-blue)](https://choosealicense.com/licenses/mit/)
[![lifecycle](https://img.shields.io/badge/lifecycle-stable-brightgreen.svg)](https://www.tidyverse.org/lifecycle/#stable)

## Description

R package to open the current working directory (or a given directory path) in your computer&rsquo;s file manager.

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

## Open a relative directory ('foo')
owd('foo') # or...
owd('./foo')

## Making use of tilde expansion
owd('~/foo')
```
## Known issues

See [Issues](https://github.com/Feakster/owd/issues) on the owd GitHub repository.
