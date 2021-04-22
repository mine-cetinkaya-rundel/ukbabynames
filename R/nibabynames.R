#' Northern Ireland baby names
#'
#' Full baby name data from 1997 to 2018 for Northern Ireland
#' from the Northern Ireland Statistics and Research Agency.
#'
#' @name nibabynames
#' @docType data
#' @format A data frame with 20,500 observations on 6 variables.
#' \describe{
#'   \item{year}{A year (1997-2018).}
#'   \item{sex}{Sex, `M` for male and `F` for female.}
#'   \item{name}{A name.}
#'   \item{n}{Count of name within year and sex.}
#'   \item{rank}{Rank of name within year and sex.}
#'   \item{nation}{Nation of data source: `Northern Ireland`.}
#'   }
#' @source
#' Northern Ireland Statistics and Research Agency. 2021. [Baby Names Statistics Boys and Girls](https://www.nisra.gov.uk/publications/baby-names-2018).
#' @examples 
#' library(ggplot2)
#' library(dplyr)
#' 
#' nibabynames %>%
#'   filter(name == "Joseph") %>%
#'   ggplot(aes(x = year, y = n)) +
#'   geom_line() +
#'   labs(
#'     title = "Popularity of the name `Joseph` in Northern Ireland", 
#'     x = "Year", y = "Number of babies"
#'     )
"nibabynames"
