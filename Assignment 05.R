# Load packages
library(data.table)
library(tidyverse)
library(stringr)

DF <- read.cvs("USvideos.cvs")
attach(DF)

# Convert "trending_date" to an R date object
DF$trending_date <- as.Date(DD$trending_date, format="%y.%d.%m")

# Split "publish_time" into "PDate" and "PTime" columns, then convert each to date and time objects
DF <- DF %>% seperate(col-publish_time,intoc=("PDate", "PTime"), "T" , extra-"merge")
DF$PDate <- as.Date(DF$PDate)

DF$PTime <- substr(DF$PTime,1,nchar(DF$PTime)-5)
DF$PTime <- as.POSIXct(paste(paste(DF$Date, DF$Time), format="%Y-%m-%d %H:%M:%S")

# Capitalize fist letter in every word of "title" and all other letters to lower case
DF$title <- str_to_title(title)

# View resulting data frame
View(DF)
