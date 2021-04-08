#' @rdname ukbabynames
#' @title UK baby names
#' @description Full baby name 1996-2019 for the United Kingdom from the Office of National Statistics
#'
#' @format 
#'   A data frame with 254889 observations on 5 variables.
#'   \tabular{rll}{
#'     [, 1] \tab year  \tab A year (1996-2019) \cr
#'     [, 2] \tab sex   \tab \dQuote{M} = Male; \dQuote{F} = Female \cr
#'     [, 3] \tab name  \tab A name \cr
#'     [, 4] \tab n     \tab Count of name within year and sex \cr
#'     [, 5] \tab rank  \tab Rank of name within year and sex \cr
#'   }
#' 
#' @details
#' The data are released by the Office of National Statistics under the \href{http://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/}{Open Government License v3.0}.
#' 
#' @source
#' Office of National Statistics. 2021. \href{https://www.ons.gov.uk/peoplepopulationandcommunity/birthsdeathsandmarriages/livebirths/datasets/babynamesenglandandwalesbabynamesstatisticsgirls}{\dQuote{Baby Names Statistics Girls}}.
#' Office of National Statistics. 2021. \href{https://www.ons.gov.uk/peoplepopulationandcommunity/birthsdeathsandmarriages/livebirths/datasets/babynamesenglandandwalesbabynamesstatisticsboys}{\dQuote{Baby Names Statistics Boys}}.
#' @seealso \code{\link{rankings}}
"ukbabynames"
