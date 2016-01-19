### Exercise 3 ###

# Run the data() function to see what datasets are available in R
data()

# Load the HairEyeColor dataset by passing it's name to the data function
data("HairEyeColor")

# You can now reference the HairEyeColor table with the variable name HairEyeColor

# Create a dataframe `students` by converting the HairEyeColor table into a data.frame
students <- as.data.frame(HairEyeColor)

# Change the column names of your data.frame to be lowercase
colnames(students) <- tolower(colnames(students))

# Using the write.csv function, write your dataframe to a .csv file called "students.csv"
write.csv(students, file="data/students.csv")

# How many total students were there?
total <- sum(students$freq)

# What were the eye colors represented in the dataset?
eye_colors <- as.character(unique(students$eye))

# What were the hair colors represented in the dataset?
hair_colors <- as.character(unique(students$hair))
