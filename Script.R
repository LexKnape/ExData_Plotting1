# Course Project 1 of Lesson 4


# In order not to go through the whole procedure () each time I create a plot we code
# apropriete functions for 
# 1. Downloading the zip.file
# 2. Create the subset
# 3. Convert Date & time to the correct Date/Time classes
# 4. Strip the missing values

# Setting the working dir
library(bitops)
library(RCurl)

setwd("/Users/anknape/Mainfolder/Study/Data Science/Les 4  Exploratory Data Analysis/Week 1-2/Course project")
getwd()
# Setting the fileUrl 
# fileUrl <-"https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"

# Setting the download function 
download <- function(fileURL, fileName) {
  if(!file.exists(fileName)) {
    download.file(fileURL, destfile=fileName, method="curl")
  }
  fileName
}

FromRawtoTidy <- function() {
  temp <- "hpc_plot.csv"
  if(file.exists(temp)) {
    fileSubset <- read.csv(temp)
    fileSubset$DateTime <- strptime(fileSubset$DateTime, "%Y-%m-%d %H:%M:%S")
  }
  else {
    fileName <- download("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", "household_power_consumption.zip")
    hcp <- unzip(fileName, "household_power_consumption.txt")
    fileSubset <- read.table(hcp, header=T, sep=';', na.strings="?", colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))
    #close(hcp)
    fileSubset <- fileSubset[(fileSubset$Date == "1/2/2007") | (fileSubset$Date == "2/2/2007"),]
    fileSubset$DateTime <- strptime(paste(fileSubset$Date, fileSubset$Time), "%d/%m/%Y %H:%M:%S")
    write.csv(fileSubset, temp)
  }
  fileSubset
}
