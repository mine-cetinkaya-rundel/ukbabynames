# UK Baby Names

This package contains two datasets provided by the UK Office of National Statistics:

* `ukbabynames`: For each year from 1996 to 2015, the number of children of each sex given each name. All names with more than 3 uses are included.

* `rankings`: A longitudinal dataset containing the top-100 baby girl and top-100 baby boy names over the period 1904 to 1994.

It is inspired by Hadley Wickham's [**babynames** package](https://cran.r-project.org/package=babynames).

## Installation

[![CRAN](http://www.r-pkg.org/badges/version/ukbabynames)](https://cran.r-project.org/package=ukbabynames)
[![Build Status](https://travis-ci.org/leeper/ukbabynames.svg?branch=master)](https://travis-ci.org/leeper/ukbabynames)
[![codecov.io](http://codecov.io/github/leeper/ukbabynames/coverage.svg?branch=master)](http://codecov.io/github/leeper/ukbabynames?branch=master)
![Downloads](http://cranlogs.r-pkg.org/badges/ukbabynames)

**ukbabynames** is on CRAN. To install the latest version, simply use:

```R
install.packages("ukbabynames")
```

To install the latest development version of **ukbabynames** from GitHub:

```R
# latest (potentially unstable) version from GitHub
if (!require("ghit")) {
    install.packages("ghit")
}
ghit::install_github("leeper/ukbabynames")
```

