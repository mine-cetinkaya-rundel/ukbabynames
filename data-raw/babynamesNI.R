# construct the `babynames` dataset from nisra.gov.

dir.create("data-raw/f+m-NI")
if(!file.exists("data-raw/f+m-NI/1997-2018.xlsx"))
  download.file("https://www.nisra.gov.uk/sites/nisra.gov.uk/files/publications/Full_Name_List_9718.xlsx",
                "data-raw/f+m-NI/1997-2018.xlsx", mode = "wb")

