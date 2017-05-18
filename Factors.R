# The term factor refers to a statistical data type used to store categorical
# variables. The difference between a categorical variable and a continuous
# variable is that a categorical variable can belong to a limited number of
# categories. A continuous variable, on the other hand, can correspond to an
# infinite number of values.
# 
# It is important that R knows whether it is dealing with a continuous or a
# categorical variable, as the statistical models you will develop in the future
# treat both types differently. (You will see later why this is the case.)
# 
# A good example of a categorical variable is the variable 'Gender'. A human
# individual can either be "Male" or "Female", making abstraction of
# inter-sexes. So here "Male" and "Female" are, in a simplified sense, the two
# values of the categorical variable "Gender", and every observation can be
# assigned to either the value "Male" of "Female".



# There are two types of categorical variables: a nominal categorical variable
# and an ordinal categorical variable.

#A nominal variable is a categorical variable without an implied order. This
#means that it is impossible to say that 'one is worth more than the other'. For
#example, think of the categorical variable animals_vector with the categories
#"Elephant", "Giraffe", "Donkey" and "Horse". Here, it is impossible to say that
#one stands above or below the other. (Note that some of you might disagree ;-)
#).
#Example:
animals_vector <- c("Elephant", "Giraffe", "Donkey", "Horse")
factor_animals_vector <- factor(animals_vector)
factor_animals_vector

#ordinal variables do have a natural ordering. Consider for example the
#categorical variable temperature_vector with the categories: "Low", "Medium"
#and "High". Here it is obvious that "Medium" stands above "Low", and "High"
#stands above "Medium".
#Example:
temperature_vector <- c("High", "Low", "High","Low", "Medium")
factor_temperature_vector <- factor(temperature_vector, order = TRUE, levels = c("Low", "Medium", "High"))
factor_temperature_vector


#Factor levels

#to change the names of these levels for clarity or other reasons. R allows you
#to do this with the function levels():

survey_vector <- c("M", "F", "F", "M", "M")
factor_survey_vector <- factor(survey_vector)

# Specify the levels of factor_survey_vector
levels(factor_survey_vector) <- c("Female","Male")
factor_survey_vector
levels(factor_survey_vector) 

#Summarizing a factor: summary() will give you a quick overview of the contents of a variable

# Generate summary for survey_vector
summary(survey_vector)

# Generate summary for factor_survey_vector
summary(factor_survey_vector)

#Finding the large value in factor

# Male
male <- factor_survey_vector[1]

# Female
female <- factor_survey_vector[2]

male > female


#Ordering a factor
speed_vector <- c("fast","slow","slow","fast","insane")
factor_speed_vector <- factor(speed_vector, order = TRUE,levels = c("slow", "fast", "insane"))

# Print factor_speed_vector
factor_speed_vector
summary(factor_speed_vector)