#' Scotland baby names
#'
#' Full baby name data from 1974 to 2020 for Scotland
#' from the National Records of Scotland.
#'
#' @name scotbabynames
#' @docType data
#' @format A data frame with 248,420 observations on 6 variables.
#' \describe{
#'   \item{year}{A year (1974-2020).}
#'   \item{sex}{Sex, `M` for male and `F` for female.}
#'   \item{name}{A name.}
#'   \item{n}{Count of name within year and sex.}
#'   \item{rank}{Rank of name within year and sex.}
#'   \item{nation}{Nation of data source: `Scotland`.}
#'   }
#' @source
#' National Records of Scotland. 2021. [Baby Names Statistics Boys and Girls](https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/vital-events/names/babies-first-names/babies-first-names-2020).
#' @examples
#' library(ggplot2)
#' library(dplyr)
#' 
#' scotbabynames %>%
#'   filter(name == "Ava") %>%
#'   ggplot(aes(x = year, y = n)) +
#'   geom_line() +
#'   labs(
#'     title = "Popularity of the name `Ava` in England & Wales", 
#'     x = "Year", y = "Number of babies"
#'     )
"scotbabynames"
