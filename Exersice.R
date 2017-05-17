#Sample of function
a<-3
f <- function(x)
{
  a <- 2
  a ^ 2 + g(x)
}

g <- function(x)
{
  x * a
}
f(6)

rm(a)
a <- c(1,1,1,1,2,2,2,2,2)
b <- c(10,12,15,12,NA,30,42,38,40)

c <- split(b,a)
c
lapply(c,mean)

#To handle missing value
lapply(c,mean,na.rm = TRUE)

t(c)

rbind(a,b)
length(4)

seq_along(a)