# Load data.table package
library(data.table)

# Import LA_Listings file
header <- read.table("LA_Listings.csv", header = TRUE, sep = ",", nrows = 1)
LA_Listings <- fread("LA_Listings.csv", skip=1, sep",", header=FALSE, data.table=FALSE)
setNames(LA_Listings, colnames(header))
rm(header)

# Summary of LA_Listings
summary(LA_Listings)
