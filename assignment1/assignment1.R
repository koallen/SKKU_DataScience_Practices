# Data Science and Management
# Assignment 1
# Date: 02-07-2015
# Author: Siyuan Liu

# clean variables
rm(list=ls(all=TRUE))

# read the data of storm events in the U.S. in 2003 from the CSV file
data2003 <- read.csv("stormEvents2003.csv")

# this graph is to show the frequencies of storms in each month in 2003
hist(data2003$BEGIN_YEARMONTH)

# this graph tries to find the correlation between number of direct injuries and month
plot(data2003$BEGIN_YEARMONTH, data2003$INJURIES_DIRECT, type="h")
