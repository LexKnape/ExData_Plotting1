# Course Project 1 of Lesson 4

getwd()
setwd("/Users/anknape/Mainfolder/Study/Data Science/Les 4  Exploratory Data Analysis/Week 1-2/Course project")

# First calculate what the amount of data

# 2.075.259 rows x 9 rows x 8 bytes / numeric = 149.418.648 bytes
x <- (2075259*9*8)
y<-(x/1048576) # is 2^20.
z <- y/1000
z
# [1] 0.1424967 MB more than enough memory
