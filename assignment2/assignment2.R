# Data Science and Management
# Assignment 2
#
# Liu Siyuan
# 08/07/2015

#
# Question 1
#

q1Data <- c(90, 95, 89, 71, 73, 96, 87, 95, 107, 89, 96, 80, 97, 95, 102, 97, 93, 101, 82, 83, 74, 91, 83, 98, 95, 111, 99, 120, 93, 84)

# 1.a.
q1SampleMean <- mean(q1Data)
q1SampleMean # 92.2
# the quantity estimates the mean score of all games played (i.e. population mean)

# 1.b.
# No, it is just one sample and the sample mean can be either close to or far away from the population mean.

# 1.c.
q1StandardError <- sd(q1Data)/sqrt(30)
q1StandardError #1.976529

# 1.d.
# It measures how close the sample mean is to the population mean

# 1.e.
q1LowerLimit <- q1SampleMean - 1.96 * q1StandardError
q1UpperLimit <- q1SampleMean + 1.96 * q1StandardError
q1LowerLimit # 88.326
q1UpperLimit # 96.074

# 1.f.
# It means that 95% of the time, the interval includes the population mean

#
# Question 2
#

male <- c(220.1, 218.6, 229.6, 228.8, 222.0, 224.1, 226.5)
female <- c(223.4, 221.5, 230.2, 224.3, 223.8, 230.8)

# descriptive statistics
mean(male) # 224.2429
mean(female) # 225.6667
sd(male) # 4.254745
sd(female) # 3.866609

# hypothesis testing
# H0: Male and females have the same mean cholesterol concentrations.
# Ha: Male and femals don't have the same mean cholesterol concentrations.
t.test(male, female)

# 95% confidence interval is included in the above t-test

#
# Question 3
#

# 3.a.
# False. We don't know how effect the treatment is.

# 3.b.
# True. The null hypothesis is rejected meaning alternative hypothesis, which says the treatment has some effect, is favored.

# 3.c.
# False. The probability is the alpha value.

# 3.d.
# False. The probability is not related to the p-value.

# 3.e.
# True. The p-value would be higher than the significance level.

#
# Question 4
#

personA <- c(248, 236, 269, 254, 249, 251, 260, 245, 239, 255)
personB <- c(380, 391, 377, 392, 398, 374)

t.test(1.5*personA, personB)

#
# Question 5
#

# Standard error of mean measures how close the sample mean is to the population mean
# Standard deviation describes the dispersion of the data

# Using the data from question 1
hist(q1Data)
# The standard deviation is showing that data are disperse
sd(q1Data) # 10.82589
# The standard error is showing how close the sample mean is to the population mean
q1StandardError # 1.976529
