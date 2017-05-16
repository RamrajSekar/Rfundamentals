# Brief description: R functions are OBJECTS
# They do calculations for you
# R function structure: name <- function (argument) {statements}
# The arguments specify the components to be used in the function

myfunc <- function(X){X+X}
myfunc(10)


# stepwise working functions
mysecfunc <- function(t,z){
  value = z*3
  value = value*t
  print(value)
}
mysecfunc(5,8)
