# download the `scotbabynames` dataset from nrscotland.gov --------------------

dir.create("data-raw/scotbabynames/f-m")

if(!file.exists("data-raw/scotbabynames/f-m/1974-2020.csv")){
  download.file("https://www.nrscotland.gov.uk/files//statistics/babies-names/20/babies-first-names-all-names-all-years.csv",
                "data-raw/scotbabynames/f-m/1974-2020.csv", mode = "wb")
}

# import scot data -------------------------------------------------------------

scotbabynames <- readr::read_csv("data-raw/scotbabynames/f-m/1974-2020.csv")

# clean scot data --------------------------------------------------------------

scotbabynames <- scotbabynames %>%
  rename(
    year = yr,
    name = FirstForename,
    n = number
  ) %>%
  subset(select = c(year, sex, name, n, rank)) %>%
  mutate(sex = if_else(sex == "B", "M", "F")) %>%
  mutate(nation = "Scotland")

# export -----------------------------------------------------------------------

readr::write_csv(scotbabynames, "data-raw/scotbabynames/scotbabynames.csv")
usethis::use_data(scotbabynames, overwrite = TRUE)
