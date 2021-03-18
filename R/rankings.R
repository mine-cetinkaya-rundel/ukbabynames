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
