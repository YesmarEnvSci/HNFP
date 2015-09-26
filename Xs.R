#### Bern Romey, 24Sept15 
#### Purpose: Merge DataPlus dbf files and save as CSV, export GPS waypoints as CSV

require(foreign)# load foreign package
library(dplyr)# Load dplyr package
hdr <-read.dbf("R39SiteInfo.dbf", as.is = FALSE)
morph <- read.dbf("R39Morph.dbf", as.is = FALSE)
dta <- merge(hdr, morph) #Merge hdr and morph dbf files based on common key
str(dta) # check structure of data

write.csv(dta,file = "R39Xs.csv") # Writes file with merged data to working directory

wp <- filter(dta, ILAT > 0 )
write.csv(wp,file = "IP39XsWP.CSV") # Writes CSV file with waypoints only to working directory


