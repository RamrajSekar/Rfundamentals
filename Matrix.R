# In R, a matrix is a collection of elements of the same data type (numeric, character, 
# or logical) arranged into a fixed number of rows and columns. 
# Since you are only working with rows and columns, a matrix is called two-dimensional. 

# To Construct a matrix with 3 rows that contain the numbers 1 up to 9
matrix(1:9, byrow = TRUE, nrow = 3)

#Excercise: In this exercise, you'll combine all these figures into a single vector. Next, you'll build a matrix from this vector.

# Box office Star Wars (in millions!)
new_hope <- c(460.998, 314.4)

empire_strikes <- c(290.475, 247.900)
return_jedi <- c(309.306, 165.8)
tpm <- c(474.5,552.5)
atc <- c(310.7,338.7)
ros <- c(380.3,468.5)


#combining above 3 vectors to single vector
box_office <- c(new_hope,empire_strikes,return_jedi)
box_office

# Construct matrix for box-office
star_wars_matrix <- matrix(box_office, byrow = TRUE, nrow = 3)
star_wars_matrix

# another way to construct
star_wars_matrix <- matrix(c(new_hope, empire_strikes, return_jedi), nrow = 3, byrow = TRUE)
star_wars_matrix

                      #Naming a matrix

# Vectors region and titles, used for naming
region <- c("US", "non-US")
titles <- c("A New Hope", "The Empire Strikes Back", "Return of the Jedi")
titles2 <- c("The Phantom Menace", "Attack of the clones", "Revenge of the Sith")


# Name the rows and columns: with region and titles
colnames(star_wars_matrix) <- region
rownames(star_wars_matrix) <- titles
star_wars_matrix

#rowSum() function calculates the totals for each row of a matrix and it creates a new vector
worldwide_vector <- rowSums(star_wars_matrix)
worldwide_vector
star_wars_matrix
#You can add a column or multiple columns to a matrix with the cbind() function, which merges matrices and/or vectors together by column.

all_wars_matrix <- cbind(star_wars_matrix,worldwide_vector)
all_wars_matrix


star_wars_matrix2 <- matrix(c(tpm, atc, ros), nrow = 3, byrow = TRUE)
star_wars_matrix2




colnames(star_wars_matrix2) <- region
rownames(star_wars_matrix2) <- titles2
star_wars_matrix2

# rbind() is used to Combine two matrix: Star Wars trilogies in one matrix
all_wars_matrix <- rbind(star_wars_matrix,star_wars_matrix2)
all_wars_matrix

# Total revenue by each row
total_revenue_vector <- rowSums(all_wars_matrix)
total_revenue_vector
# Revenue by column here to differentiate us and non-us
total_revenue_vector <- colSums(all_wars_matrix)
total_revenue_vector

#Subsetting Matrix values: Selection of specific matrix elements
non_us_all <- all_wars_matrix[,2]
non_us_all

# Average non-US revenue
mean(non_us_all)

# Select the non-US revenue for first two movies
non_us_some <- all_wars_matrix[1:2,2]
non_us_some

mean(non_us_some)

#Arithmetic operation in matrix: For example, 2 * my_matrix multiplies each element of my_matrix by two.

visitors <- all_wars_matrix / 5
visitors

#------------------------below is to create matrix-----

mnames <- c(titles,titles2)
mnames

price <- c(5.0,6.0,7.0,4.0,4.5,4.9)
price_matrix <- matrix(c(price), nrow = 6,ncol = 2, byrow = FALSE)
price_matrix

colnames(price_matrix) <- region
rownames(price_matrix) <- mnames
price_matrix

#------------------------above is to create matrix-----
#Arithmetic with my_matrix1 * my_matrix2 creates a matrix where each element is the product of the corresponding elements in my_matrix1 and my_matrix2

all_wars_matrix
# Estimated number of visitors
visitors <- all_wars_matrix / price_matrix
visitors

# To find US and non-us visitors
us_visitors <- visitors[,1]
us_visitors
nonus_visitors <- visitors[,2]
nonus_visitors
#To find average
mean(us_visitors)
mean(nonus_visitors)