# construct the `rankings` dataset from source

requireNamespace("readxl")

if (!file.exists("historicname_tcm77-254032.xls")) {
    download.file("https://www.ons.gov.uk/file?uri=/peoplepopulationandcommunity/birthsdeathsandmarriages/livebirths/datasets/babynamesenglandandwalestop100babynameshistoricaldata/19041994/historicname_tcm77-254032.xls", 
    "historicname_tcm77-254032.xls", mode = "wb")
}

boys <- as.data.frame(readxl::read_excel("historicname_tcm77-254032.xls", sheet = "Boys", range = "A4:K100", col_names = FALSE))
girls <- as.data.frame(readxl::read_excel("historicname_tcm77-254032.xls", sheet = "Girls", range = "A4:K100", col_names = FALSE))

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
rankings[["name"]] <- tools::toTitleCase(rankings[["name"]])
rankings[["sex"]] <- c("M", "F")[rankings[["sex"]]]

# export
write.csv(rankings, "rankings.csv", row.names = FALSE, quote = FALSE)
devtools::use_data(rankings, overwrite = TRUE, compress = 'xz')
