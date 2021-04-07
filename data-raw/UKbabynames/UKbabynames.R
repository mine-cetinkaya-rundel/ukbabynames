library(dplyr)

NI <- read_csv("data-raw/babynamesNI/NIbabynames.csv") %>%
  mutate(nation = "Northern Ireland")
  
  
Scot <- read_csv("data-raw/babynamesScot/f+m-Scot/1974-2020.csv") %>%
  rename(year = yr,
         name = FirstForename,
         n = number) %>%
  subset(select = c(year, sex, name, n, rank)) %>%
  mutate(nation = "Scotland")

EW <- read_csv("data-raw/babynamesEW/babynamesEW.csv") %>%
  mutate(sex=replace(sex, is.na(sex), "B")) %>%
  mutate(sex=replace(sex, sex == FALSE, "G")) %>%
  mutate(nation = "England and Wales")

UK <- rbind(EW, Scot, NI) %>%
  write_csv("data-raw/UKbabynames/UKbabynames.csv")
