# Exercise 1: creating and accessing lists

# Create a vector `my_breakfast` of everything you ate for breakfast
my_breakfast <- c("Cinnamon Bagel", "Strawberry Smoothie")

# Create a vector `my_lunch` of everything you ate (or will eat) for lunch
my_lunch <- c("Veggies", "Rice")

# Create a list `meals` that has contains your breakfast and lunch
meals <- list(breakfast = my_breakfast, lunch = my_lunch)
print(meals)

# Add a "dinner" element to your `meals` list that has what you plan to eat 
# for dinner
meals$dinner <- c("steak", "7 Up")
print(meals)

# Use dollar notation to extract your `dinner` element from your list
# and save it in a vector called 'dinner'
dinner <- meals$dinner
print(dinner)

# Use double-bracket notation to extract your `lunch` element from your list
# and save it in your list as the element at index 5 (no reason beyond practice)
meals[[5]] <- meals[["lunch"]]
print(meals)

# Use single-bracket notation to extract your breakfast and lunch from your list
# and save them to a list called `early_meals`
early_meals <- meals[c("breakfast", "lunch")]
print(early_meals)

### Challenge ###

# Create a list that has the number of items you ate for each meal
# Hint: use the `lappy()` function to apply the `length()` function to each item
num_items <- lapply(meals, length)
print(num_items)

# Write a function `add_pizza` that adds pizza to a given meal vector, and
# returns the pizza-fied vector
add_pizza <- function(meal_vector) {
  # add pizza to that vector
  new_vector <- c(meal_vector, "pizza")
  # return the new vector
  return(new_vector)
}

add_pizza(c("beer"))

lapply(meals, add_pizza)
# Create a vector `better_meals` that is all your meals, but with pizza!

#install.packages("stringr")
library("stringr")

sentence <- "the quick brown fox jumped over the laxy dog"
word(sentence,2,4) # quick brown fox


### TODAY'S DATE

01/21/2020
21/01/2020
2020/01/21
January 21, 2020

