
x=5:7
y = 8:10

plot(x,y)
# data is a time series,  lynx here is a line plot
plot(lynx)

# title, color, title color, title magnification
plot(lynx, main="Lynx Trappings", col="red",col.main=52, cex.main=1.5)

# label names
plot(lynx, ylab="Lynx Trappings", xlab="")

# label orientation
plot(lynx, ylab="Lynx Trappings", xlab="", las=2)

# changing the session paramter, 2*2 plot matrix
par(mfrow=c(2,2), col.axis="red")

plot(1:8, las=0, xlab="xlab", ylab="ylab", main="LAS = 0")
plot(1:8, las=1, xlab="xlab", ylab="ylab", main="LAS = 1")
plot(1:8, las=2, xlab="xlab", ylab="ylab", main="LAS = 2")
plot(1:8, las=3, xlab="xlab", ylab="ylab", main="LAS = 3")


?plot
# by using "type" we can specify which kind of plot we want
plot(lynx) # plot for time series data
plot(lynx, type="p", main="Type p") # points (default)
plot(lynx, type="l", main="Type l") # lines (default for time series)
plot(lynx, type="b", main="Type b") # points connected by lines
plot(lynx, type="b", main="Type c") # lines only of b
plot(lynx, type="h", main="Type h") # high density
plot(lynx, type="s", main="Type s") # steps
plot(lynx, type="n", main="Type n") # no plot


# Example: advanced line plot with R Base

par(mar=c(4,3,3,3), col.axis="darkgreen") # change of plot margins

plot(cars$speed, type="s", col="red", xlab="Cars ID", ylab="Speed",main = "Car Speed")
text(8, 14, "Speed in mph", cex=0.85, col="red") # adding the explanatory text to plot 1




par(new=T) # allows 2 in 1 plot

plot(cars$dist, type="s", bty="n", ann=F, axes=F, col="darkblue")
axis(side=4, col = "darkblue") # y axis for plot 2
text(37, 18, "Stopping distance in ft", cex=0.85, col="darkblue") # explanations to plot 2
title(main="Speed and Stopping\n Distances of Cars") # main title

#??? graphical parameters

?par

par()


x = 1:41
y = rivers

plot(x,y, col = "green", pch = 20,
     main = "Lengths of\nMajor N. American Rivers",
     col.main ="red", xlab = "",
     ylab = "length in miles")

plot(x,y, xlab="index",ylab="length in miles", main = "Length of n.american rivers",
     col.main="orange",pch = 20)
