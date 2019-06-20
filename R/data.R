#' @rdname ukbabynames
#' @aliases ukbabynames ukbabynames-package
#' @title UK baby names
#' @description Full baby name 1996-2017 for the United Kingdom from the Office of National Statistics
#'
#' @format 
#'   A data frame with 254889 observations on 5 variables.
#'   \tabular{rll}{
#'     [, 1] \tab year  \tab A year (1996-2017) \cr
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
#' Office of National Statistics. 2019. \href{https://www.ons.gov.uk/peoplepopulationandcommunity/birthsdeathsandmarriages/livebirths/datasets/babynamesenglandandwalesbabynamesstatisticsgirls}{\dQuote{Baby Names Statistics Girls}}.
#' Office of National Statistics. 2019. \href{https://www.ons.gov.uk/peoplepopulationandcommunity/birthsdeathsandmarriages/livebirths/datasets/babynamesenglandandwalesbabynamesstatisticsboys}{\dQuote{Baby Names Statistics Boys}}.
#' @seealso \code{\link{rankings}}
"ukbabynames"

#' @title UK top-100 baby names by year
#' @description A longitudinal dataset containing the top-100 baby girl and top-100 baby boy names over the period 1904 to 1994.
#'
#' @details
#' The data are released by the Office of National Statistics under the \href{http://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/}{Open Government License v3.0}.
#' 
#' @format 
#'   A data frame with 1900 observations on 4 variables.
#'   \tabular{rll}{
#'     [, 1] \tab name  \tab A name \cr
#'     [, 2] \tab year  \tab A year (1904-1994). Rankings are based upon births within that decade. \cr
#'     [, 3] \tab rank  \tab Rank of the name within decade \cr
#'     [, 4] \tab sex   \tab \dQuote{M} = Male; \dQuote{F} = Female \cr
#'   }
#' 
#' @source
#' Office of National Statistics. 2016. \dQuote{Top 100 Baby Names Historical Data}. \url{https://www.ons.gov.uk/peoplepopulationandcommunity/birthsdeathsandmarriages/livebirths/datasets/babynamesenglandandwalestop100babynameshistoricaldata}
#' @seealso \code{\link{ukbabynames}}
"rankings"
