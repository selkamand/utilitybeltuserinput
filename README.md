
<!-- README.md is generated from README.Rmd. Please edit that file -->

# utilitybeltuserinput

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)

<!-- badges: end -->

The goal of utilitybeltuserinput is to provide robust, intuitive methods
for collecting user input.

Key differences to traditional methods like `askYesNo` is that here we
will keep re-asking the question until the user gives a satisfactory
input, rather than throwing an error.

## Installation

You can install the development version of **utilitybeltuserinput** from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("selkamand/utilitybeltuserinput")
```

## Example

``` r
library(utilitybeltuserinput)

## Choose from curated list of options
readline_choose(
  prompt = "Which fruit is your favourite?",
  choices = c("Apples", "Oranges", "Pairs")
)

## Choose yes/no
readline_choose_yes_or_no("Do you like apples?")
```
