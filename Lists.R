#Vectors (one dimensional array): can hold numeric, character or logical values.
#The elements in a vector all have the same data type.
#Matrices (two dimensional array): can hold numeric, character or logical
#values. The elements in a matrix all have the same data type.
#Data frames (two-dimensional objects): can hold numeric, character or logical
#values. Within a column all elements have the same data type, but different
#columns can be of different data type.

                              #Lists#
#A list in R is similar to your to-do list at work or school: the different
#items on that list most likely differ in length, characteristic, type of
#activity that has to do be done, ...
#A list in R allows you to gather a variety of objects under one name (that is,
#the name of the list) in an ordered way. These objects can be matrices,
#vectors, data frames, even other lists, etc. It is not even required that these
#objects are related to each other in any way.
#You could say that a list is some kind super data type: you can store
#practically any piece of information in it!


                              #Exercise

#Vector
my_vector <- 1:10
my_vector

#Matrix
my_matrix <- matrix(1:9, ncol = 3)
my_matrix

#Data frame
my_df <- mtcars[1:10,]
my_df

#Constructing list and naming the same
my_list <- list(my_vector,my_matrix,my_df)
names(my_list) <- c("vec","mat","df")
my_list

#Creating a named list 
mov <- "The shining"
act <- c("Jack","Shelly","Danny","Scatman","Barry")
iscore <- c(4.5,4.0,5.0)
isources <- c("IMDB1","IMDB2","IMDB3")
icomments <- c("Best horror","A Truely Brilliant","A masterpiece")
irev <- c(iscore,isources,icomments)
im_review <- matrix(irev, byrow = FALSE, nrow = 3)
im_review

#Otherway to create a named list 
shining_list <- list(moviename = mov,actors=act,reviews=im_review)
shining_list

                    #Selecting elements from a list

#single [x] gives both name and value of first component
shining_list[1]

##double [[x]] gives only value of first component
shining_list[[1]]
#or
shining_list[["reviews"]]
#or
shining_list$reviews

## [[x]][y] gives the value ofrespective component
shining_list[[2]][1] #Here it gives the 1st value of 2nd component actors

                #Adding more movie information to the list
shining_list_full <- c(shining_list, year=1986)
shining_list_full

str(shining_list_full)