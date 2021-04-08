[![R-CMD-check](https://github.com/mine-cetinkaya-rundel/ukbabynames/workflows/R-CMD-check/badge.svg)](https://github.com/mine-cetinkaya-rundel/ukbabynames/actions)
  
# UK Baby Names

This package contains four datasets:

* `babynamesEW`: For each year from 1996 to 2019, the number of children of each sex given each name in England and Wales. All names with more than 3 uses are included. Provided by the UK Office of National Statistics.

* `babynamesNI`: For each year from 1997 to 2018, the number of children of each sex given each name in Northern Ireland. Provided by the Northern Ireland Statistics and Research Agency.

* `babynamesScot`: For each year from 1974 to 2020, the number of children of each sex given each name in Scotland. Provided by the National Records of Scotland.


* `UKbabynames`: Each of the above datasets is bound into one dataset with an added nation column based on which dataset it came from.

It is inspired by Hadley Wickham's [**babynames** package](https://cran.r-project.org/package=babynames).

## Installation

[![CRAN](https://www.r-pkg.org/badges/version/ukbabynames)](https://cran.r-project.org/package=ukbabynames)
![Downloads](https://cranlogs.r-pkg.org/badges/ukbabynames)

**ukbabynames** is on CRAN. To install the latest version, simply use:

```R
install.packages("ukbabynames")
```

To install the latest development version of **ukbabynames** from GitHub:

```R
# latest (potentially unstable) version from GitHub
if (!require("remotes")) {
    install.packages("remotes")
}
remotes::install_github("mine-cetinkaya-rundel/ukbabynames")
```

