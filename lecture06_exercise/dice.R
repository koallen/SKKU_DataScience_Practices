# Lecture 6 exercise
# Rolling the dice
#
# Siyuan Liu
# 06/07/2015

# 10 experiments
r10_1 <- sample(1:6, 10, replace=T)
r10_2 <- sample(1:6, 10, replace=T)
r10 <- r10_1 + r10_2
hist(r10)

# 100 experiments
r100_1 <- sample(1:6, 100, replace=T)
r100_2 <- sample(1:6, 100, replace=T)
r100 <- r100_1 + r100_2
hist(r100)

# 10000 experiments
r10000_1 <- sample(1:6, 10000, replace=T)
r10000_2 <- sample(1:6, 10000, replace=T)
r10000 <- r10000_1 + r10000_2
hist(r10000)
plot(ecdf(r10000))

# some other codes
numbers <- rnorm(10000)
plot(numbers, dnorm(numbers), type="h")
