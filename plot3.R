# Course Project 1 of Lesson 4 plot 3


# In order not to go through the whole procedure () each time I create a plot we code
# apropriete functions for 
# 1. Downloading the zip.file
# 2. Create the subset
# 3. Convert Date & time to the correct Date/Time classes
# 4. Strip the missing values


# Setting the working dir if run fro local

setwd("/Users/anknape/Mainfolder/Study/Data Science/Les 4  Exploratory Data Analysis/Week 1-2/Course project")

source("Script.R")

plot3 <- function() {
  fileSubset <- FromRawtoTidy()
  png(filename = "plot3.png", width = 480, height = 480, units = "px")
  cols = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
  plot(fileSubset$DateTime, fileSubset$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
  lines(fileSubset$DateTime, fileSubset$Sub_metering_2, type="l", col="red")
  lines(fileSubset$DateTime, fileSubset$Sub_metering_3, type="l", col="blue")
  legend("topright", lty=1, lwd=1, col=c("black","blue","red"), legend=cols)
  dev.off()
}

plot3()
