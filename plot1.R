# Course Project 1 of Lesson 4


# In order not to go through the whole procedure () each time I create a plot we code
# apropriete functions for 
# 1. Downloading the zip.file
# 2. Create the subset
# 3. Convert Date & time to the correct Date/Time classes
# 4. Strip the missing values


# Setting the working dir if run fro local
setwd("/Users/anknape/Mainfolder/Study/Data Science/Les 4  Exploratory Data Analysis/Week 1-2/Course project")

source("Script.R")


# define function for plo1
plot1 <- function() {
  fileSubset <- FromRawtoTidy()
  png(filename = "plot1.png", width = 480, height = 480, units = "px")
  hist(fileSubset$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", col="red")
  dev.off()
}

# Run plot1 save as png
plot1()
