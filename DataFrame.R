#A data frame has the variables of a data set as columns and the observations as rows#

#To check current working directory
getwd()

#To set current working directory
setwd("C:\\MachineLearning\\LearnRbasics")

#To read the file from wd
mtcars <- read.csv("mtcar.csv")

#To print the values
mtcars

# To show part of the data set of large data
# head() enables you to show the first observations of a data frame. Similarly,
# the function tail() prints out the last observations in your data set.

head(mtcars)
tail(mtcars)


#The function str() shows you the structure of your data set
str(mtcars)

                            #Creating data frames

# Definition of vectors
name <- c("Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune")
type <- c("Terrestrial planet", "Terrestrial planet", "Terrestrial planet", 
          "Terrestrial planet", "Gas giant", "Gas giant", "Gas giant", "Gas giant")
diameter <- c(0.382, 0.949, 1, 0.532, 11.209, 9.449, 4.007, 3.883)
rotation <- c(58.64, -243.02, 1, 1.03, 0.41, 0.43, -0.72, 0.67)

planets_df <- data.frame(name,type,diameter,rotation,rings)
rings <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE)


# Create a data frame from the vectors
planets_df <- data.frame(name,type,diameter,rotation,rings)
planets_df


                      #Selection of data frame elements using index
planets_df[1,3]
#or
planets_df[4,]


                    #Selection of data frame elements using column name
planets_df[1:5,3]
#or
planets_df[1:5,"diameter"]

            #Selection of all the data frame elements from one specific column
planets_df[1:8,"diameter"]
#or
planets_df$diameter

#To  You selected a subset from a data frame (planets_df) based on whether or
#not a certain condition was true (rings or no rings),
planets_df[rings,]

#or by using subset() function syntax is subset(my_df, subset = some_condition)
subset(planets_df, subset = rings)
subset(planets_df, subset = diameter > 4)

#SORTING in Data frame
# In data analysis you can sort your data according to a certain variable in the
# data set. In R, this is done with the help of the function order()

#Example
a <- c(100, 10, 1000)
#Shuffles the index value by comparing the element value
order(a)
#Shuffles the element value
a[order(a)]

positions <-  order(planets_df$diameter)
planets_df[positions,]
