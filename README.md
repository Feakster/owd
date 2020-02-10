# owd

<!-- Badges -->
[![license](https://img.shields.io/badge/license-MIT-blue)](https://choosealicense.com/licenses/mit/)
[![lifecycle](https://img.shields.io/badge/lifecycle-maturing-blue.svg)](https://www.tidyverse.org/lifecycle/#maturing)

## Description
R package to open the current working directory in a computer's file manager.

## Installation

You can install the development version from [GitHub](https://github.com/Feakster/owd) with:

```R
if (!{"devtools" %in% installed.packages()[, "Package"]}) install.packages("devtools")
devtools::install_github("Feakster/owd")
```

## Examples
To open your current R working directory in your computer's file manager, simply run the following:

```R
### Load Package Namespace ###
library(owd)

### Open Working Directory ###
owd()
```
## Known issues

See [Issues](https://github.com/Feakster/owd/issues) on the owd GitHub repository.
