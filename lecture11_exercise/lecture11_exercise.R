# Data Science and Management
# Lecture 11 exercise
#
# Siyuan Liu
# 13/07/2015

# Loading library ggplot2
library(ggplot2)

# This is the data I get from our team's dataset
df <- data.frame(
    group = c("Asian", "Black", "Hispanic", "Native American", "Other", "White"),
    value = c(40179, 209201, 134675, 1608, 34472, 264619) / 684754
)

# Create a pie chart
pie <- ggplot(df, aes(x="", y=value, fill=group)) + geom_bar(width=1, stat='identity') + coord_polar('y')
pie <- pie + scale_fill_brewer(palette="Dark2")

# Plot the pie chart
plot(pie)
