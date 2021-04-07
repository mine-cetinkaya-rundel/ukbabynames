# construct the `babynames` dataset from nisra.gov.
library(dplyr)

dir.create("data-raw/f+m-NI")
if(!file.exists("data-raw/f+m-NI/1997-2018.xlsx"))
  download.file("https://www.nisra.gov.uk/sites/nisra.gov.uk/files/publications/Full_Name_List_9718.xlsx",
                "data-raw/babynamesNI/f+m-NI/1997-2018.xlsx", mode = "wb")

# Boys dfs from downloaded file.
B1997 <- read_excel("data-raw/babynamesNI/f+m-NI/1997-2018.xlsx", sheet  = "Table 1", range = "A5:C333", col_names = FALSE) %>%
  mutate(sex = "B", year = 1997)
B1998 <- read_excel("data-raw/babynamesNI/f+m-NI/1997-2018.xlsx", sheet  = "Table 1", range = "D5:F338", col_names = FALSE) %>%
  mutate(sex = "B", year = 1998)
B1999 <- read_excel("data-raw/babynamesNI/f+m-NI/1997-2018.xlsx", sheet  = "Table 1", range = "G5:I338", col_names = FALSE) %>%
  mutate(sex = "B", year = 1999)
B2000 <- read_excel("data-raw/babynamesNI/f+m-NI/1997-2018.xlsx", sheet  = "Table 1", range = "J5:L337", col_names = FALSE) %>%
  mutate(sex = "B", year = 2000)
B2001 <- read_excel("data-raw/babynamesNI/f+m-NI/1997-2018.xlsx", sheet  = "Table 1", range = "M5:O346", col_names = FALSE) %>%
  mutate(sex = "B", year = 2001)
B2002 <- read_excel("data-raw/babynamesNI/f+m-NI/1997-2018.xlsx", sheet  = "Table 1", range = "P5:R330", col_names = FALSE) %>%
  mutate(sex = "B", year = 2002)
B2003 <- read_excel("data-raw/babynamesNI/f+m-NI/1997-2018.xlsx", sheet  = "Table 1", range = "S5:U365", col_names = FALSE) %>%
  mutate(sex = "B", year = 2003)
B2004 <- read_excel("data-raw/babynamesNI/f+m-NI/1997-2018.xlsx", sheet  = "Table 1", range = "V5:X376", col_names = FALSE) %>%
  mutate(sex = "B", year = 2004)
B2005 <- read_excel("data-raw/babynamesNI/f+m-NI/1997-2018.xlsx", sheet  = "Table 1", range = "Y5:AA383", col_names = FALSE) %>%
  mutate(sex = "B", year = 2005)
B2006 <- read_excel("data-raw/babynamesNI/f+m-NI/1997-2018.xlsx", sheet  = "Table 1", range = "AB5:AD414", col_names = FALSE) %>%
  mutate(sex = "B", year = 2006)
B2007 <- read_excel("data-raw/babynamesNI/f+m-NI/1997-2018.xlsx", sheet  = "Table 1", range = "AE5:AG449", col_names = FALSE) %>%
  mutate(sex = "B", year = 2007)
B2008 <- read_excel("data-raw/babynamesNI/f+m-NI/1997-2018.xlsx", sheet  = "Table 1", range = "AH5:AJ454", col_names = FALSE) %>%
  mutate(sex = "B", year = 2008)
B2009 <- read_excel("data-raw/babynamesNI/f+m-NI/1997-2018.xlsx", sheet  = "Table 1", range = "AK5:AM473", col_names = FALSE) %>%
  mutate(sex = "B", year = 2009)
B2010 <- read_excel("data-raw/babynamesNI/f+m-NI/1997-2018.xlsx", sheet  = "Table 1", range = "AN5:AP490", col_names = FALSE) %>%
  mutate(sex = "B", year = 2010)
B2011 <- read_excel("data-raw/babynamesNI/f+m-NI/1997-2018.xlsx", sheet  = "Table 1", range = "AQ5:AS455", col_names = FALSE) %>%
  mutate(sex = "B", year = 2011)
B2012 <- read_excel("data-raw/babynamesNI/f+m-NI/1997-2018.xlsx", sheet  = "Table 1", range = "AT5:AV514", col_names = FALSE) %>%
  mutate(sex = "B", year = 2012)
B2013 <- read_excel("data-raw/babynamesNI/f+m-NI/1997-2018.xlsx", sheet  = "Table 1", range = "AW5:AY504", col_names = FALSE) %>%
  mutate(sex = "B", year = 2013)
B2014 <- read_excel("data-raw/babynamesNI/f+m-NI/1997-2018.xlsx", sheet  = "Table 1", range = "AZ5:BB515", col_names = FALSE) %>%
  mutate(sex = "B", year = 2014)
B2015 <- read_excel("data-raw/babynamesNI/f+m-NI/1997-2018.xlsx", sheet  = "Table 1", range = "BC5:BE509", col_names = FALSE) %>%
  mutate(sex = "B", year = 2015)
B2016 <- read_excel("data-raw/babynamesNI/f+m-NI/1997-2018.xlsx", sheet  = "Table 1", range = "BF5:BH516", col_names = FALSE) %>%
  mutate(sex = "B", year = 2016)
B2017 <- read_excel("data-raw/babynamesNI/f+m-NI/1997-2018.xlsx", sheet  = "Table 1", range = "BI5:BK504", col_names = FALSE) %>%
  mutate(sex = "B", year = 2017)
B2018 <- read_excel("data-raw/babynamesNI/f+m-NI/1997-2018.xlsx", sheet  = "Table 1", range = "BL5:BN515", col_names = FALSE) %>%
  mutate(sex = "B", year = 2018)


# Girls dfs from downloaded file.
G1997 <- read_excel("data-raw/babynamesNI/f+m-NI/1997-2018.xlsx", sheet  = "Table 2", range = "A5:C471", col_names = FALSE) %>%
  mutate(sex = "G", year = 1997)
G1998 <- read_excel("data-raw/babynamesNI/f+m-NI/1997-2018.xlsx", sheet  = "Table 2", range = "D5:F444", col_names = FALSE) %>%
  mutate(sex = "G", year = 1998)
G1999 <- read_excel("data-raw/babynamesNI/f+m-NI/1997-2018.xlsx", sheet  = "Table 2", range = "G5:I423", col_names = FALSE) %>%
  mutate(sex = "G", year = 1999)
G2000 <- read_excel("data-raw/babynamesNI/f+m-NI/1997-2018.xlsx", sheet  = "Table 2", range = "J5:L436", col_names = FALSE) %>%
  mutate(sex = "G", year = 2000)
G2001 <- read_excel("data-raw/babynamesNI/f+m-NI/1997-2018.xlsx", sheet  = "Table 2", range = "M5:O425", col_names = FALSE) %>%
  mutate(sex = "G", year = 2001)
G2002 <- read_excel("data-raw/babynamesNI/f+m-NI/1997-2018.xlsx", sheet  = "Table 2", range = "P5:R423", col_names = FALSE) %>%
  mutate(sex = "G", year = 2002)
G2003 <- read_excel("data-raw/babynamesNI/f+m-NI/1997-2018.xlsx", sheet  = "Table 2", range = "S5:U430", col_names = FALSE) %>%
  mutate(sex = "G", year = 2003)
G2004 <- read_excel("data-raw/babynamesNI/f+m-NI/1997-2018.xlsx", sheet  = "Table 2", range = "V5:X484", col_names = FALSE) %>%
  mutate(sex = "G", year = 2004)
G2005 <- read_excel("data-raw/babynamesNI/f+m-NI/1997-2018.xlsx", sheet  = "Table 2", range = "Y5:AA486", col_names = FALSE) %>%
  mutate(sex = "G", year = 2005)
G2006 <- read_excel("data-raw/babynamesNI/f+m-NI/1997-2018.xlsx", sheet  = "Table 2", range = "AB5:AD505", col_names = FALSE) %>%
  mutate(sex = "G", year = 2006)
G2007 <- read_excel("data-raw/babynamesNI/f+m-NI/1997-2018.xlsx", sheet  = "Table 2", range = "AE5:AG537", col_names = FALSE) %>%
  mutate(sex = "G", year = 2007)
G2008 <- read_excel("data-raw/babynamesNI/f+m-NI/1997-2018.xlsx", sheet  = "Table 2", range = "AH5:AJ549", col_names = FALSE) %>%
  mutate(sex = "G", year = 2008)
G2009 <- read_excel("data-raw/babynamesNI/f+m-NI/1997-2018.xlsx", sheet  = "Table 2", range = "AK5:AM533", col_names = FALSE) %>%
  mutate(sex = "G", year = 2009)
G2010 <- read_excel("data-raw/babynamesNI/f+m-NI/1997-2018.xlsx", sheet  = "Table 2", range = "AN5:AP566", col_names = FALSE) %>%
  mutate(sex = "G", year = 2010)
G2011 <- read_excel("data-raw/babynamesNI/f+m-NI/1997-2018.xlsx", sheet  = "Table 2", range = "AQ5:AS569", col_names = FALSE) %>%
  mutate(sex = "G", year = 2011)
G2012 <- read_excel("data-raw/babynamesNI/f+m-NI/1997-2018.xlsx", sheet  = "Table 2", range = "AT5:AV563", col_names = FALSE) %>%
  mutate(sex = "G", year = 2012)
G2013 <- read_excel("data-raw/babynamesNI/f+m-NI/1997-2018.xlsx", sheet  = "Table 2", range = "AW5:AY572", col_names = FALSE) %>%
  mutate(sex = "G", year = 2013)
G2014 <- read_excel("data-raw/babynamesNI/f+m-NI/1997-2018.xlsx", sheet  = "Table 2", range = "AZ5:BB546", col_names = FALSE) %>%
  mutate(sex = "G", year = 2014)
G2015 <- read_excel("data-raw/babynamesNI/f+m-NI/1997-2018.xlsx", sheet  = "Table 2", range = "BC5:BE548", col_names = FALSE) %>%
  mutate(sex = "G", year = 2015)
G2016 <- read_excel("data-raw/babynamesNI/f+m-NI/1997-2018.xlsx", sheet  = "Table 2", range = "BF5:BH565", col_names = FALSE) %>%
  mutate(sex = "G", year = 2016)
G2017 <- read_excel("data-raw/babynamesNI/f+m-NI/1997-2018.xlsx", sheet  = "Table 2", range = "BI5:BK578", col_names = FALSE) %>%
  mutate(sex = "G", year = 2017)
G2018 <- read_excel("data-raw/babynamesNI/f+m-NI/1997-2018.xlsx", sheet  = "Table 2", range = "BL5:BN565", col_names = FALSE) %>%
  mutate(sex = "G", year = 2018)


NIbabynames <- rbind(B1997, B1998, B1999, B2000, B2001, B2002, B2003, B2004, B2005, B2006, B2007, B2008, B2009, B2010,
                     B2011, B2012, B2013, B2014, B2015, B2016, B2017, B2018, G1997, G1998, G1999, G2000, G2001, G2002,
                     G2003, G2004, G2005, G2006, G2007, G2008, G2009, G2010, G2011, G2012, G2013, G2014, G2015, G2016, 
                     G2017, G2018) %>%
  rename(
    name = ...1,
    n = ...2,
    rank = ...3
  )
NIbabynames <- NIbabynames[,c(5,4,1,2,3)] %>%
write_csv("data-raw/babynamesNI/NIbabynames.csv")
