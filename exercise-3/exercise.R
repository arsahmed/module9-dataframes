# Load R's "USPersonalExpenditure" dataset using the "data()" function
# This will produce a data frame called `USPersonalExpenditure`
data <- data.frame(USPersonalExpenditure)

# The variable USPersonalExpenditure is now accessible to you. Unfortunately,
# it's not a data frame (it's actually what is called a matrix)
# Test this using the `is.data.frame()` function
is.data.frame(data)

# Luckily, you can simply pass the USPersonalExpenditure variable as an argument
# to the `data.frame()` function to convert it a data farm. Do this, storing the
# result in a new variable


# What are the column names of your dataframe?
colnames(data)

# Why are they so strange? Think about whether you could use a number like 1940
# with dollar notation!
# - They have a prefix 'X' because numbers don't work with $ sign

# What are the row names of your dataframe?
rownames(data)

# Create a column "category" that is equal to your rownames
data$category <- rownames(data)

# How much money was spent on personal care in 1940?
data['Personal Care', 'X1940']

# How much money was spent on Food and Tobacco in 1960?
data['Food and Tobacco', 'X1960']

# What was the highest expenditure category in 1960?
# Hint: use the `max()` function to find the largest, then compare that to the column
data[data$X1960 == max(data$X1960), 'category']

# Define a function `DetectHighest` that takes in a year as a parameter, and
# returns the highest spending category of that year
year = paste0('X', '1940')

DetectHighest <- function(year) {
  year = paste0('X', year)
  return(data[data[[year]] == max(data[[year]]), 'category'])
}

# Using your function, determine the highest spending category of each year
DetectHighest('1945')