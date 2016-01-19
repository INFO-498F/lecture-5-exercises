### Exercise 2 ###

# Using the "setwd" function, set your working directory as the directory of your repository
setwd('~/Documents/INFO-498F/lecture-5-exercises')

# Read in the female baby names csv file into a variable called "female_names"
female_names <- read.csv('data/female_names.csv')

# Create a vector "year" as the year column of the dataset
year <- female_names$year

# Create a vector "name" as the name column of the datset
# As in the last exercise, you'll need to convert this column to a vector
name <- as.vector(female_names$name)

# Create a vector "prop" as the proportion column of the dataset
prop <- female_names$prop

# Create a vector "names_2013" as your name vector where your year vector is 2013
names_2013 <- name[year == 2013]

# Create a vector "prop_2013" as the your prop vector where your year vecctor is 2013
proportion_2013 <- prop[year==2013]

# What was the most popular female name in 2013?
most_pop <- names_2013[proportion_2013 == max(proportion_2013)]

# Write a funciton "most_popular" that takes in a value "my_year", and returns
# a sentence stating the most popular name in that year. Note how you had to make intermediary variables above.
most_popular <- function(my_year) {
  year_tmp <- year[year == my_year]
  names_tmp <- name[year == my_year]
  prop_tmp <- prop[year==my_year]
  most_pop <- names_tmp[prop_tmp == max(prop_tmp[year_tmp == my_year])]
  return(paste('The most popular baby name in', my_year, 'was', most_pop))
}

# What was the most popular female name in 1994?
most_pop_1994 <- most_popular(1994)


### Bonus ###

# Write a function "how_popular" that takes in a name and a year, and returns
# a sentence with how popular that name was in that year
how_popular <- function(my_name, my_year) {
  names_tmp <- name[year == my_year]
  prop_tmp <- prop[year==my_year]
  popular <- round(prop_tmp[names_tmp == my_name], 4)*100
  return(paste('The proportion of people named', my_name, 'in', my_year, 'was', popular))
}

# How popular was the name 'Laura' in 1995
how_popular('Laura', 1995)

