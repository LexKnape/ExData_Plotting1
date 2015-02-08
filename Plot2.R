# Course Project 1 of Lesson 4 plot 2


# In order not to go through the whole procedure () each time I create a plot we code
# apropriete functions for 
# 1. Downloading the zip.file
# 2. Create the subset
# 3. Convert Date & time to the correct Date/Time classes
# 4. Strip the missing values


# Setting the working dir if run fro local

setwd("/Users/anknape/Mainfolder/Study/Data Science/Les 4  Exploratory Data Analysis/Week 1-2/Course project")

source("Script.R")

plot2 <- function() {
  fileSubset <- FromRawtoTidy()
  png(filename = "plot2.png", width = 480, height = 480, units = "px")
  plot(fileSubset$DateTime, fileSubset$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
  dev.off()
}

plot2()
