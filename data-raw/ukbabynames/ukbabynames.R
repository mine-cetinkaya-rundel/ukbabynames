# construct the `ukbabynames` dataset from others

# load packages ----------------------------------------------------------------

library(dplyr)
library(readr)
library(usethis)

# put it altogether ------------------------------------------------------------

ukbabynames <- bind_rows(
  ewbabynames,
  scotbabynames,
  nibabynames
)

# export -----------------------------------------------------------------------

readr::write_csv(ukbabynames, "data-raw/ukbabynames/ukbabynames.csv")
usethis::use_data(ukbabynames, overwrite = TRUE)
