#' UK baby names
#' 
#' Full baby name data 1974-2020 for the United Kingdom from all nations. Contains 
#' data from England and Wales (`ewbabynames`), Scotland (`scotbabynames`), and 
#' Northern Ireland (`nibabynames`).
#' 
#' @name ukbabynames
#' @docType data
#' @format A data frame with 550,587 observations on 6 variables.
#' \describe{
#'   \item{year}{A year (1974-2020).}
#'   \item{sex}{Sex, `M` for male and `F` for female.}
#'   \item{name}{A name.}
#'   \item{n}{Count of name within year and sex.}
#'   \item{rank}{Rank of name within year and sex.}
#'   \item{nation}{Nation of data source.}
#'   }
#' @source
#' Office of National Statistics. 2021. [Baby Names Statistics Girls](https://www.ons.gov.uk/peoplepopulationandcommunity/birthsdeathsandmarriages/livebirths/datasets/babynamesenglandandwalesbabynamesstatisticsgirls).
#' Office of National Statistics. 2021. [Baby Names Statistics Boys](https://www.ons.gov.uk/peoplepopulationandcommunity/birthsdeathsandmarriages/livebirths/datasets/babynamesenglandandwalesbabynamesstatisticsboys).
#' Northern Ireland Statistics and Research Agency. 2021. [Baby Names Statistics Boys and Girls](https://www.nisra.gov.uk/publications/baby-names-2018).
#' National Records of Scotland. 2021. [Baby Names Statistics Boys and Girls](https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/vital-events/names/babies-first-names/babies-first-names-2020).
#' @examples 
#' library(ggplot2)
#' library(dplyr)
#' 
#' ukbabynames %>%
#'   filter(name == "Jack") %>%
#'   ggplot(aes(x = year, y = n, color = nation)) +
#'   labs(
#'      title = "Popularity of the name `Jack` in the UK, by Nation", /x = "Year", color = NULL) +
#'   geom_line()
"ukbabynames"
