# SKKU ISS 2015, Lecture 4
# Objective: plotting open government data

# Siyuan Liu
# Date:  7/2/2015

# clean variables
rm(list=ls(all=TRUE))

# read in data
P <- read.csv("../data_sets/UNdata_precipitation.csv")

# (1) Compare the precipitation from 1999 to 2005.  Are they different?
y1999 <- P[P$Year==1999,]
y2005 <- P[P$Year==2005,]

hist(log10(y1999$Value))
hist(log10(y2005$Value))

# (2) Precipitation for all countries over time.
m1999 <- mean(y1999$Value)
m2000 <- mean(P[P$Year==2000,]$Value)
m2001 <- mean(P[P$Year==2001,]$Value)
m2002 <- mean(P[P$Year==2002,]$Value)
m2003 <- mean(P[P$Year==2003,]$Value)
m2004 <- mean(P[P$Year==2004,]$Value)
m2005 <- mean(y2005$Value)

years <- c(1999, 2000, 2001, 2002, 2003, 2004, 2005)
means <- c(m1999, m2000, m2001, m2002, m2003, m2004, m2005)

plot(years, means, type="l")
