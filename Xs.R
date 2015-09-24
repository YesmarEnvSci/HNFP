####Bern Romey, Xs merge for HNFP

require(foreign)# Install foreign package
hdr <-read.dbf("R39SiteInfo.dbf", as.is = FALSE)
morph <- read.dbf("R39Morph.dbf", as.is = FALSE)
dta <- merge(hdr, morph)
write.csv(dta,file = "R39Xs.csv") # Writes file with merged data to working directory

