## Loops - loops and functions are a crucial part in programming
# FOR loops allow a certain operation to be repeated a fixed nr of times
# This is opposed to the While loop where the rep nr is not prefixed
# The syntax looks like this: for (name in vector) {commands}

for (i in 1:15) 
{
  print (i)
}
for(z in 2:6)
{
  print(z)
}

pr = function(n)
{
  if(n>=2)
  {
    s =seq(2,n)
    paste("The value of n is: ",s)
    p = c()
    for (i in seq(2,n))
    {
      # we use any to check that i (of this loop round) is still in s, multiples of i
      #will be removed
      if(any(s==i))
      {
        # we store i if it meets our criteria in p together with the previous p
        p = c(p,i)
        # to search for numbers with a remainder at modulus division
        s = c(s[(s%%i) != 0],i)
        print(s)
      }
    }
  }
  else
  {
    stop("Input at least 2")
    #print('The value of n is lesser than 2')
  }
}
pr(5)
pr(1)
