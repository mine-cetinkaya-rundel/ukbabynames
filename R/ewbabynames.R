#' England & Wales baby names
#'
#' Full baby name data from 1996 to 2020 for England and Wales
#' from the Office of National Statistics.
#'
#' @name ewbabynames
#' @docType data
#' @format A data frame with 294,801 observations on 6 variables.
#' \describe{
#'   \item{year}{A year (1996-2020).}
#'   \item{sex}{Sex, `M` for male and `F` for female.}
#'   \item{name}{A name.}
#'   \item{n}{Count of name within year and sex.}
#'   \item{rank}{Rank of name within year and sex.}
#'   \item{nation}{Nation of data source: `England & Wales`.}
#'   }
#' @details The data are released by the Office of National Statistics under the [Open Government License v3.0](http://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/).
#' @source
#' Office of National Statistics. 2021. [Baby Names Statistics Girls](https://www.ons.gov.uk/peoplepopulationandcommunity/birthsdeathsandmarriages/livebirths/datasets/babynamesenglandandwalesbabynamesstatisticsgirls).
#' Office of National Statistics. 2021. [Baby Names Statistics Boys](https://www.ons.gov.uk/peoplepopulationandcommunity/birthsdeathsandmarriages/livebirths/datasets/babynamesenglandandwalesbabynamesstatisticsboys).
#' @seealso [rankings]
#' @examples 
#' library(ggplot2)
#' library(dplyr)
#' 
#' ewbabynames %>%
#'   filter(name == "Nicholas") %>%
#'   ggplot(aes(x = year, y = n)) +
#'   geom_line() +
#'   labs(
#'     title = "Popularity of the name `Nicholas` in England & Wales", 
#'     x = "Year", 
#'     y = "Number of babies"
#'     )
"ewbabynames"

