#' @rdname ukbabynames
#' @title UK baby names
#' @description Full baby name 1974-2020 for the United Kingdom from the various sites.
#'
#' @format 
#'   A data frame with 550587 observations on 6 variables.
#'   \tabular{rll}{
#'     [, 1] \tab year  \tab A year (1996-2019) \cr
#'     [, 2] \tab sex   \tab \dQuote{M} = Male; \dQuote{F} = Female \cr
#'     [, 3] \tab name  \tab A name \cr
#'     [, 4] \tab n     \tab Count of name within year and sex \cr
#'     [, 5] \tab rank  \tab Rank of name within year and sex \cr
#'     [, 6] \tab nation  \tab Nation of data source \cr
#'   }
#' 
#' @details
#' The data are released by the Office of National Statistics under the \href{http://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/}{Open Government License v3.0}.
#' 
#' @source
#' Office of National Statistics. 2021. \href{https://www.ons.gov.uk/peoplepopulationandcommunity/birthsdeathsandmarriages/livebirths/datasets/babynamesenglandandwalesbabynamesstatisticsgirls}{\dQuote{Baby Names Statistics Girls}}.
#' Office of National Statistics. 2021. \href{https://www.ons.gov.uk/peoplepopulationandcommunity/birthsdeathsandmarriages/livebirths/datasets/babynamesenglandandwalesbabynamesstatisticsboys}{\dQuote{Baby Names Statistics Boys}}.
#' Northern Ireland Statistics and Research Agency. 2021. \href{https://www.nisra.gov.uk/publications/baby-names-2018}{\dQuote{Baby Names Statistics Boys and Girls}}.
#' National Records of Scotland. 2021. \href{https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/vital-events/names/babies-first-names/babies-first-names-2020}{\dQuote{Baby Names Statistics Boys and Girls}}.
#' @seealso \code{\link{rankings}}
"ukbabynames"
