myobj = 5:10
myobj
plot(myobj)


set.seed(65)
runif(n = 9, min = 3, max = 6)
runif(9,3,6)

runif(min = 3, max = 6, n = 9)
# using only the first argument
runif(3)
# using arguments 1 and 3
runif(3,,4)

# Functions: seq, paste, rep
paste("xyz", 1:10)
paste(1:4)
class(paste(1:4)) # checking the class

paste("xyz", c(2,5,7,"test", 4.5))

paste("xyz", 1:10, sep = "") # modifying the seperator

seq() # just using the default settings
seq(11,4)
# using length
seq(from = 3, length = 3)


# step manipulations
seq(from = 3, length = 3, by = 0.5)

seq(from = 3, by = 0.5, length = 3) # changed order


?rep # next function will be repeated
rep(c(3,4,5), 3)
x = c(1,2,3)
rep(x, each = 3) # using each to repeat each values of x

rep(x, each = 3, times = 3) # combining arguments by each value and times

y = 4:20 # our data
which(y == 10)
y[3]

#Excersice#
sum(myobj)
paste("R is great", c(4,7,45),"and I will love it",sep = " ")
x = rep(x,length=31)
x
x[7]
