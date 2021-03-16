# construct the `babynames` dataset from source

requireNamespace("readxl")

# function to download and rename files
download <- function(x, sex, year) {
    dest <- paste0(sex, "/", year, ".xls")
    if (!file.exists(dest)) {
        remote <- paste0("https://www.ons.gov.uk/file?uri=/peoplepopulationandcommunity/birthsdeathsandmarriages/livebirths/datasets/babynamesenglandandwalesbabynamesstatistics", if (sex == "f") "girls/" else "boys/", year, "/", x)
        download.file(remote, dest, mode = "wb")
    }
}

download_xlsx <- function(x, sex, year) {
    dest <- paste0(sex, "/", year, ".xlsx")
    if (!file.exists(dest)) {
        remote <- paste0("https://www.ons.gov.uk/file?uri=/peoplepopulationandcommunity/birthsdeathsandmarriages/livebirths/datasets/babynamesenglandandwalesbabynamesstatistics", if (sex == "f") "girls/" else "boys/", year, "/", x)
        download.file(remote, dest, mode = "wb")
    }
}


# download girls data
dir.create("f")
download_xlsx("2019girlsnames.xlsx", "f", 2019)
download("2018girlsnames.xls", "f", 2018)
download("2017girlsnames.xls", "f", 2017)
download("2016girlsnames.xls", "f", 2016)
download("2015girlsnamesfinal.xls", "f", 2015)
download("2014girlsbyareagorrsmonthwebtables_tcm77-413741.xls", "f", 2014)
download("2013girlsbyareagorrsmonthwebtables_tcm77-374588.xls", "f", 2013)
download("2012girlsbyareagorrsmonthwebtables_tcm77-323080.xls", "f", 2012)
download("2011girlsbabynamesfinal_tcm77-276135.xls", "f", 2011)
download("2010girls_tcm77-253930.xls", "f", 2010)
download("2009girls_tcm77-253940.xls", "f", 2009)
download("2008girls_tcm77-253964.xls", "f", 2008)
download("2007girls_tcm77-253971.xls", "f", 2007)
download("2006girls_tcm77-253976.xls", "f", 2006)
download("2005girls_tcm77-253980.xls", "f", 2005)
download("2004girls_tcm77-253984.xls", "f", 2004)
download("2003girls_tcm77-253988.xls", "f", 2003)
download("2002girls_tcm77-253992.xls", "f", 2002)
download("2001girls_tcm77-253998.xls", "f", 2001)
download("2000girls_tcm77-254006.xls", "f", 2000)
download("1999girls_tcm77-254010.xls", "f", 1999)
download("1998girls_tcm77-254016.xls", "f", 1998)
download("1997girls_tcm77-254020.xls", "f", 1997)
download("1996girls_tcm77-254024.xls", "f", 1996)

# download boys data
dir.create("m")
download_xlsx("2019boysnames.xlsx", "m", 2019)
download("2018boysnames.xls", "m", 2018)
download("2017boysnames.xls", "m", 2017)
download("2016boysnames.xls", "m", 2016)
download("2015boysnamesfinal.xls", "m", 2015)
download("2014boysbyareagorrsmonthwebtables_tcm77-413738.xls", "m", 2014)
download("2013boysbyareagorrsmonthwebtables_tcm77-374580.xls", "m", 2013)
download("2012boysbyareagorrsmonthwebtables_tcm77-323077.xls", "m", 2012)
download("2011boysbabynamesfinal_tcm77-276133.xls", "m", 2011)
download("2010boys_tcm77-253928.xls", "m", 2010)
download("2009boys_tcm77-253932.xls", "m", 2009)
download("2008boys_tcm77-253966.xls", "m", 2008)
download("2007boys_tcm77-253973.xls", "m", 2007)
download("2006boys_tcm77-253978.xls", "m", 2006)
download("2005boys_tcm77-253982.xls", "m", 2005)
download("2004boys_tcm77-253986.xls", "m", 2004)
download("2003boys_tcm77-253990.xls", "m", 2003)
download("2002boys_tcm77-253994.xls", "m", 2002)
download("2001boys_tcm77-254000.xls", "m", 2001)
download("2000boys_tcm77-254008.xls", "m", 2000)
download("1999boys_tcm77-254014.xls", "m", 1999)
download("1998boys_tcm77-254018.xls", "m", 1998)
download("1997boys_tcm77-254022.xls", "m", 1997)
download("1996boys_tcm77-254026.xls", "m", 1996)

# import data
## function to read data and attach year and sex variables
read_plus <- function(sex, year, ...) {
    x <- as.data.frame(readxl::read_excel(paste0(sex, "/", year, ".xls"), ...))
    names(x) <- c("rank", "name", "n")
    stopifnot(x$rank[1L] == 1)
    x$year <- year
    x$sex <- if (sex == "m") "M" else "F"
    x
}

read_plus_xlsx <- function(sex, year, ...) {
    x <- as.data.frame(readxl::read_excel(paste0(sex, "/", year, ".xlsx"), ...))
    names(x) <- c("rank", "name", "n")
    stopifnot(x$rank[1L] == 1)
    x$year <- year
    x$sex <- if (sex == "m") "M" else "F"
    x
}


# import girls data
girls <- list()
girls[[1]] <- read_plus("f", 1996, range = "Table 3 - Girls names - E&W!B7:D4963", col_names = FALSE)
girls[[2]] <- read_plus("f", 1997, range = "Table 6 - Girls names - E&W!B7:D4974", col_names = FALSE)
girls[[3]] <- read_plus("f", 1998, range = "Table 6 - Girls names - E&W!B7:D5009", col_names = FALSE)
girls[[4]] <- read_plus("f", 1999, range = "Table 6 - Girls names - E&W!B7:D5063", col_names = FALSE)
girls[[5]] <- read_plus("f", 2000, range = "Table 6 - Girls names - E&W!B7:D5160", col_names = FALSE)
girls[[6]] <- read_plus("f", 2001, range = "Table 6 - Girls names - E&W!B7:D5242", col_names = FALSE)
girls[[7]] <- read_plus("f", 2002, range = "Table 6 - Girls names - E&W!B7:D5426", col_names = FALSE)
girls[[8]] <- read_plus("f", 2003, range = "Table 6 - Girls names - E&W!B7:D5748", col_names = FALSE)
girls[[9]] <- read_plus("f", 2004, range = "Table 6 - Girls names - E&W!B7:D6050", col_names = FALSE)
girls[[10]] <- read_plus("f", 2005, range = "Table 6 - Girls names - E&W!B7:D6225", col_names = FALSE)
girls[[11]] <- read_plus("f", 2006, range = "Table 6 - Girls names - E&W!B7:D6575", col_names = FALSE)
girls[[12]] <- read_plus("f", 2007, range = "Table 6 - Girls names - E&W!B7:D6876", col_names = FALSE)
girls[[13]] <- read_plus("f", 2008, range = "Table 6 - Girls names - E&W!B7:D7256", col_names = FALSE)
girls[[14]] <- read_plus("f", 2009, range = "Table 6 - Girls names - E&W!B7:D7237", col_names = FALSE)
girls[[15]] <- read_plus("f", 2010, range = "Table 6 - Girls names - E&W!B7:D7394", col_names = FALSE)
girls[[16]] <- read_plus("f", 2011, range = "Table 6 - Girls names - E&W!B6:D7580", col_names = FALSE)
girls[[17]] <- read_plus("f", 2012, range = "Table 6 - Girls names - E&W!B6:D7734", col_names = FALSE)
girls[[18]] <- read_plus("f", 2013, range = "Table 6 - Girls names - E&W!B6:D7543", col_names = FALSE)
girls[[19]] <- read_plus("f", 2014, range = "Table 6 - Girls names - E&W!B6:D7442", col_names = FALSE)
girls[[20]] <- read_plus("f", 2015, range = "Table 6!B6:D7474", col_names = FALSE)
girls[[21]] <- read_plus("f", 2016, range = "Table 6!B6:D7519", col_names = FALSE)
girls[[22]] <- read_plus("f", 2017, range = "Table 6!A7:C7521", col_names = FALSE)
girls[[23]] <- read_plus("f", 2018, range = "Table 6!A7:C7362", col_names = FALSE)
girls[[24]] <- read_plus_xlsx("f", 2019, range = "Table 6!A7:C7220", col_names = FALSE)

# import boys data
boys <- list()
boys[[1]] <- read_plus("m", 1996, range = "Table 3 - Boys names - E&W!B7:D3720", col_names = FALSE)
boys[[2]] <- read_plus("m", 1997, range = "Table 6 - Boys names - E&W!B7:D3770", col_names = FALSE)
boys[[3]] <- read_plus("m", 1998, range = "Table 6 - Boys names - E&W!B7:D3804", col_names = FALSE)
boys[[4]] <- read_plus("m", 1999, range = "Table 6 - Boys names - E&W!B7:D3835", col_names = FALSE)
boys[[5]] <- read_plus("m", 2000, range = "Table 6 - Boys names - E&W!B7:D3937", col_names = FALSE)
boys[[6]] <- read_plus("m", 2001, range = "Table 6 - Boys names - E&W!B7:D4055", col_names = FALSE)
boys[[7]] <- read_plus("m", 2002, range = "Table 6 - Boys names - E&W!B7:D4185", col_names = FALSE)
boys[[8]] <- read_plus("m", 2003, range = "Table 6 - Boys names - E&W!B7:D4534", col_names = FALSE)
boys[[9]] <- read_plus("m", 2004, range = "Table 6 - Boys names - E&W!B7:D4766", col_names = FALSE)
boys[[10]] <- read_plus("m", 2005, range = "Table 6 - Boys names - E&W!B7:D5009", col_names = FALSE)
boys[[11]] <- read_plus("m", 2006, range = "Table 6 - Boys names - E&W!B7:D5242", col_names = FALSE)
boys[[12]] <- read_plus("m", 2007, range = "Table 6 - Boys names - E&W!B7:D5637", col_names = FALSE)
boys[[13]] <- read_plus("m", 2008, range = "Table 6 - Boys names - E&W!B7:D5803", col_names = FALSE)
boys[[14]] <- read_plus("m", 2009, range = "Table 6 - Boys names - E&W!B7:D5902", col_names = FALSE)
boys[[15]] <- read_plus("m", 2010, range = "Table 6 - Boys names - E&W!B7:D6039", col_names = FALSE)
boys[[16]] <- read_plus("m", 2011, range = "Table 6 - Boys names - E&W!B7:D6089", col_names = FALSE)
boys[[17]] <- read_plus("m", 2012, range = "Table 6 - Boys names - E&W!B6:D6199", col_names = FALSE)
boys[[18]] <- read_plus("m", 2013, range = "Table 6 - Boys names - E&W!B6:D6059", col_names = FALSE)
boys[[19]] <- read_plus("m", 2014, range = "Table 6 - Boys names - E&W!B7:D6041", col_names = FALSE)
boys[[20]] <- read_plus("m", 2015, range = "Table 6!B7:D6085", col_names = FALSE)
boys[[21]] <- read_plus("m", 2016, range = "Table 6!B7:D6253", col_names = FALSE)
boys[[22]] <- read_plus("m", 2017, range = "Table 6!A7:C6170", col_names = FALSE)
boys[[23]] <- read_plus("m", 2018, range = "Table 6!A7:C6123", col_names = FALSE)
boys[[24]] <- read_plus_xlsx("m", 2019, range = "Table 6!A7:C6097", col_names = FALSE)


# combine
ukbabynames <- rbind(do.call("rbind", girls), do.call("rbind", boys))
ukbabynames[["name"]] <- tools::toTitleCase(tolower(ukbabynames[["name"]]))
names(ukbabynames) <- c("rank", "name", "n", "year", "sex")
ukbabynames <- ukbabynames[c("year", "sex", "name", "n", "rank")]

# export
write.csv(ukbabynames, "ukbabynames.csv", row.names = FALSE, quote = FALSE)
usethis::use_data(ukbabynames, overwrite = TRUE, compress = 'xz')

