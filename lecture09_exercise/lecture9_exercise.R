#
# Question 1
#

moneyFirst <- c(20, 32, 35, 34, 40, 51, 52, 56, 57, 68)
moneySecond <- c(23, 34, 36, 44, 42, 51, 54, 57, 54, 62)

# 1.a.
plot(moneyFirst, moneySecond)

# 1.b.
# The pattern is that when the money spent the first time is high, the money spent the second time tends to be also high.
# It seems that there is a strong linear positive relationship.

# 1.c.
co <-cor(moneyFirst, moneySecond)
SE <- sqrt((1-co^2)/(length(moneyFirst)-2))

# 1.d.
# The standard error is the standard deviation of the sample distribution of the correlation coefficient

# 1.e.
cor.test(moneyFirst, moneySecond)
# the interval is (0.87, 0.99)

#
# Question 2
#

# 2.a.
cor.test(moneyFirst, moneySecond + 30)
# Adding a constant to one variable doesn't affect the correlation coefficient
cor.test(moneyFirst + 30, moneySecond + 30)
# Adding a constant to both variables doesn't affect the correlation coefficient either.

# 2.b.
cor.test(moneyFirst * 100, moneySecond)
# Multiplying a constant to one variable doesn't affect the correlation coefficient
cor.test(moneyFirst * 100, moneySecond * 100)
# Multiplying a constant to both variables doesn't affect the correlation coefficient either.

#
# Question 3
#

homeRange <- c(-1.3, -0.5, -0.3, 0.2, 0.1, 0.5, 1.0, 0.3, 0.4, 0.5, 0.1, 0.2, 0.4, 1.3, 1.2, 1.4, 1.6, 1.6, 1.8, 3.1)
infantMortality <- c(4, 22, 0, 0, 11, 13, 17, 25, 24, 27, 29, 33, 33, 42, 33, 20, 19, 19, 25, 65)

# 3.a.
plot(homeRange, infantMortality)
# It seems that there is a linear relationship between the two variables, although it's not that strong of a relationship.

# 3.b.
reg <- lm(infantMortality ~ homeRange)
abline(reg) # slope 9.955, intercept 16.28

# 3.c.
summary(reg) # It seems that the home range does predict the infant mortality

# 3.d.
homeRange_2 <- c(-1.3, -0.5, -0.3, 0.2, 0.1, 0.5, 1.0, 0.3, 0.4, 0.5, 0.1, 0.2, 0.4, 1.3, 1.2, 1.4, 1.6, 1.6, 1.8)
infantMortality_2 <- c(4, 22, 0, 0, 11, 13, 17, 25, 24, 27, 29, 33, 33, 42, 33, 20, 19, 19, 25)
reg_2 <- lm(infantMortality_2 ~ homeRange_2)
abline(reg_2)
summary(reg_2) # slope 6.063 , intercept 17.492
# the slope changed a lot
