# Course Project 1 of Lesson 4 plot 4


# In order not to go through the whole procedure () each time I create a plot we code
# apropriete functions for 
# 1. Downloading the zip.file
# 2. Create the subset
# 3. Convert Date & time to the correct Date/Time classes
# 4. Strip the missing values


# Setting the working dir if run fro local

setwd("/Users/anknape/Mainfolder/Study/Data Science/Les 4  Exploratory Data Analysis/Week 1-2/Course project")

source("Script.R")

plot4 <- function() {
  fileSubset <- FromRawtoTidy()
  png(filename = "plot4.png", width = 480, height = 480, units = "px")
  
  par (mfrow = c(2,2), mar = c(4,4,2,1), oma = c(0,0,2,0))
  with(fileSubset, {
    plot(DateTime, Global_active_power, xlab="", ylab="Global Active Power", type="l")
    plot(DateTime, Voltage, xlab="datetime", ylab="Voltage", type="l")
    
    cols = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
    plot(DateTime, Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
    lines(DateTime, Sub_metering_2, type="l", col="red")
    lines(DateTime, Sub_metering_3, type="l", col="blue")
    legend("topright", lty=1, lwd=1, col=c("black","blue","red"), legend=cols, bty="n")
    
    plot(DateTime, Global_reactive_power, xlab="datetime", ylab="Global_reactive_power", type="l")        
  })    
  dev.off()
}

plot4()
