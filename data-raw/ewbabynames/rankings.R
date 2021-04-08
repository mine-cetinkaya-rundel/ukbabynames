# construct the `rankings` dataset from source
# there isn't a more updated version of this dataset on the ONS website

library(readxl)

boys <- as.data.frame(readxl::read_excel("data-raw/historicname_tcm77-254032.xls", sheet = "Boys", range = "A4:K100", col_names = FALSE))
girls <- as.data.frame(readxl::read_excel("data-raw/historicname_tcm77-254032.xls", sheet = "Girls", range = "A4:K100", col_names = FALSE))

names(boys) <- boys[1L,]
names(girls) <- girls[1L,]

boys <- boys[-c(1:2),]
girls <- girls[-c(1:2),]

boys_long <- reshape(boys, direction = "long", varying = list(names(boys)[names(boys) != "RANK"]), times = names(boys)[names(boys) != "RANK"])[,c(3,2,1)]
boys_long <- cbind(boys_long, 1L)
names(boys_long) <- c("name", "year", "rank", "sex")

girls_long <- reshape(girls, direction = "long", varying = list(names(girls)[names(girls) != "RANK"]), times = names(girls)[names(girls) != "RANK"])[,c(3,2,1)]
girls_long <- cbind(girls_long, 2L)
names(girls_long) <- c("name", "year", "rank", "sex")

rankings <- rbind(boys_long, girls_long)
rankings$year <- as.numeric(rankings$year)
rankings$rank <- as.numeric(rankings$rank)
rankings[["name"]] <- tools::toTitleCase(tolower(rankings[["name"]]))
rankings[["sex"]] <- c("M", "F")[rankings[["sex"]]]
rankings <- tibble::tibble(rankings)

# export
readr::write_csv(rankings, "data-raw/rankings.csv")
usethis::use_data(rankings, overwrite = TRUE)

