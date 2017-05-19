#Comparision operator

# The linkedin and facebook vectors 
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)

#Find On which days did the number of LinkedIn profile views exceed 15?
linkedin >= 15

# Quiet days
linkedin <= 5

# LinkedIn more popular than Facebook
linkedin > facebook


views <- matrix(c(linkedin, facebook), nrow = 2, byrow = TRUE)

# When does views equal 13?
views[1:2,1:7] == 13

# When is views less than or equal to 14?
views[1:2,1:7] <= 14