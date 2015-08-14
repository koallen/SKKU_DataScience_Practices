# lecture 7 exercise
# central limit theorem
#
# 07/07/2015
# Siyuan Liu

# define a function for getting the mean of 5 rolls
roll <- function() {
    mean <- mean(sample(1:6, 5, replace=T))
    return(mean)
}

# roll once first
result <- roll()

# roll for another 10k times to get more sample means
for (i in 1:10000) {
    result <- c(result, roll())
}

# plot the result to show central limit theorem
plot(density(result))
