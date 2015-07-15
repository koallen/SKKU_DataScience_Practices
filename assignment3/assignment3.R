# Data Science and Management
# Assignment 3
#
# Liu Siyuan
# 15/07/2015


#
# Regression
#

# the dataset 'phones' is used here
library(MASS)
data(phones)

# plot original data and do linear regression
plot(phones$year, phones$calls)
ye.model <- lm(calls~year, data=phones)
phones$pred <- predict(ye.model, phones)

# plot the linear regression line
abline(ye.model$coefficients[1], ye.model$coefficients[2])

# plot the predicted values
points(phones$year, phones$pred, col="blue", pch=16)

#
# K-means Clustering
#

bad <- kmeans(mtcars, centers=2)
plot(mtcars$mpg, mtcars$hp, col=bad$cluster, pch=16, xlab="MPG", ylab="Horsepower")

#
# SPAM
#

library(ElemStatLearn)
library(caret)

sub <- sample(nrow(spam), floor(nrow(spam) * 0.9))
train <- spam[sub,]
test <- spam[-sub,]

xTrain <- train[,-58]
yTrain <- train$spam

xTest <- test[,-58]
yTest <- test$spam

# train a spam filter model
model <- train(xTrain, yTrain, 'nb', trControl=trainControl(method='cv', number=10))

# display the results
prop.table(table(predict(model$finalModel, xTest)$class, yTest))
