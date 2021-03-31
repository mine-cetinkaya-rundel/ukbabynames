# construct the `babynames` dataset from nrscotland.gov.

dir.create("data-raw/f+m-scotland")
if(!file.exists("data-raw/f+m-scotland/1974-2020.csv"))
download.file("https://www.nrscotland.gov.uk/files//statistics/babies-names/20/babies-first-names-all-names-all-years.csv",
              "data-raw/f+m-scotland/1974-2020.csv", mode = "wb")