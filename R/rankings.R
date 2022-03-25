#' England & Wales top-100 baby names by year
#' 
#' A longitudinal dataset containing the top-100 baby girl and top-100 baby 
#' boy names over the period 1904 to 1994.
#' 
#' @format A data frame with 1,900 observations on 4 variables.
#' \describe{
#'   \item{name}{A name.}
#'   \item{year}{A year (1904-1994). Rankings are based upon births within that decade.}
#'   \item{rank}{Rank of the name within decade.}
#'   \item{sex}{Sex, `M` for male and `F` for female.}
#'   }
#' @details The data are released by the Office of National Statistics under the [Open Government License v3.0](https://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/).
#' @source Office of National Statistics. 2016. [Top 100 Baby Names Historical Data](https://www.ons.gov.uk/peoplepopulationandcommunity/birthsdeathsandmarriages/livebirths/datasets/babynamesenglandandwalestop100babynameshistoricaldata).
#' @seealso [ewbabynames]
#' 
"rankings"
