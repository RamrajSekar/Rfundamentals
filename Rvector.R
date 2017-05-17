# Poker and roulette winnings from Monday to Friday:

poker_vector <- c(140, -50, 20, -120, 240)
roulette_vector <- c(-24, -50, 100, -350, 10)
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker_vector) <- days_vector
names(roulette_vector) <- days_vector

# Assign to total_daily how much you won/lost on each day
total_daily <- poker_vector+roulette_vector
total_daily


# Total winnings with poker
total_poker <- sum(poker_vector)
total_poker

# Total winnings with roulette
total_roulette <-  sum(roulette_vector)
total_roulette

# Total winnings overall in a week
total_week <- total_poker+total_roulette

# Print out total_week
total_week

# Check if you realized higher total gains in poker than in roulette 
gain <- total_poker > total_roulette
gain

# Define a new variable based on a selection
poker_wednesday <- days_vector[3]
poker_wednesday

# To get multiple value from vector using index
poker_midweek <- poker_vector[c(2,3,4)]
poker_midweek


#otherway To get multiple value from vector using index
roulette_midweek <- roulette_vector[2:5]
roulette_midweek

# otherway To get multiple value from vector using Name
poker_start <- poker_vector[c("Monday","Tuesday","Wednesday")]
mean(poker_start)


#Vector value selection using comparision operator
# Which days did you make money on poker?
selection_vector <- poker_vector > 0
selection_vector

# Select from poker_vector these days
#R knows what to do when you pass a logical vector in square brackets[]: it will only select the elements that correspond to TRUE
poker_winning_days <- poker_vector[selection_vector]
poker_winning_days


# Which days did you make money on roulette?
selection_vector <- roulette_vector > 0

# Select from roulette_vector these days
roulette_winning_days <- roulette_vector[selection_vector]
roulette_winning_days