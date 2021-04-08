# load packages ----------------------------------------------------------------

library(dplyr)

# put it altogether ------------------------------------------------------------

ukbabynames <- bind_rows(
  ewbabynames,
  scotbabynames,
  nibabynames
)

# export -----------------------------------------------------------------------

readr::write_csv(ukbabynames, "data-raw/ukbabynames/ukbabynames.csv")
usethis::use_data(ukbabynames, overwrite = TRUE)
