
# ukbabynames

<!-- badges: start -->

[![CRAN
status](https://www.r-pkg.org/badges/version/ukbabynames)](https://cran.r-project.org/package=ukbabynames)
[![Lifecycle:
stable](https://img.shields.io/badge/lifecycle-stable-green.svg)](https://lifecycle.r-lib.org/articles/stages.html#stable)
[![R build
status](https://github.com/mine-cetinkaya-rundel/ukbabynames/workflows/R-CMD-check/badge.svg)](https://github.com/mine-cetinkaya-rundel/ukbabynames/actions)
[![CRAN RStudio mirror
downloads](http://cranlogs.r-pkg.org/badges/ukbabynames)](https://cran.r-project.org/package=ukbabynames)
[![R-CMD-check](https://github.com/saralemus7/ukbabynames/workflows/R-CMD-check/badge.svg)](https://github.com/saralemus7/ukbabynames/actions)
<!-- badges: end -->

This package contains five datasets:

-   `ewbabynames`: For each year from 1996 to 2019, the number of
    children of each sex given each name in England and Wales. All names
    with more than 3 uses are included. Provided by the UK Office of
    National Statistics.

-   `nibabynames`: For each year from 1997 to 2018, the number of
    children of each sex given each name in Northern Ireland. Provided
    by the Northern Ireland Statistics and Research Agency.

-   `scotbabynames`: For each year from 1974 to 2020, the number of
    children of each sex given each name in Scotland. Provided by the
    National Records of Scotland.

-   `ukbabynames`: Each of the above datasets is bound into one dataset
    with an added nation column based on which dataset it came from.

-   `rankings`: A longitudinal dataset containing the top-100 baby girl
    and top-100 baby boy names over the period 1904 to 1994, only in
    England and Wales.

It is inspired by Hadley Wickham’s
[**babynames**](https://cran.r-project.org/package=babynames) package.

## Installation

You can install the released version of ukbabynames from
[CRAN](https://cran.r-project.org/) with:

``` r
install.packages("ukbabynames")
```

You can install the development version of openintro from GitHub with:

``` r
# install.packages("devtools")
devtools::install_github("mine-cetinkaya-rundel/ukbabynames")
```
