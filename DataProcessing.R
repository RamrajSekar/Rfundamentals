#Data pre-processing

#Import dataset
dataset = read.csv('C:/MachineLearning/Part 1 - Data Preprocessing/Data.csv')

#Taking care of missing data
dataset$Age = ifelse(is.na(dataset$Age),
                     ave(dataset$Age, 
                         FUN = function(x) mean(x, na.rm = TRUE)),dataset$Age)



dataset$Salary = ifelse(is.na(dataset$Salary),
                     ave(dataset$Salary, FUN = function(x) mean(x, na.rm = TRUE)),
                     dataset$Salary)

#Handling/Encoding Categotical Data: User factor and c is vector
dataset$Country = factor(dataset$Country,
                         levels = c('France', 'Spain', 'Germany'),labels = c(1, 2, 3))

dataset$Purchased = factor(dataset$Purchased,
                         levels = c('No', 'Yes'),labels = c(0, 1))

#Important in ML: Split the data set into Training set and Test set
# Why? Here our algorithm is going to learn the correlation from the data set
#So in ML build the model in Training set and test in test set to make sure the performance is good.

#To install a package: install.packages('caTools')
#To select the installed library
library(caTools)

#Below is to split the dataset into two sets
set.seed(123)
split = sample.split(dataset$Purchased, SplitRatio = 0.8)

training_set = subset(dataset, split == TRUE)
test_set = subset(dataset, split == FALSE)

#Feature Scaling: Nothing but putting variables of same range so no variable is dominating other
#Standardisation:  Xstd = (x - mean(x))/standart deviation(x)
# Normalisation:  Xnorm = (x - min(x))/(max(x)-min(x))
#Scale cann't be applied on factors

training_set[, 2:3] = scale(training_set[, 2:3])
test_set[, 2:3] = scale(test_set[, 2:3])

print(test_set)


