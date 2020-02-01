DATA WRANGLING WITH dplyr

dplyr is a package = makes it easier to work with data frames

Grammar for Data Manipulation
  filter = for the oversavions (rows) of interest
  select = the features (columns) of interest
  summarize = the data into an aggregate value (mean, median, maximum)
  mutate = a data set by adding more columns
  join = multipe data sets together into a single data frame 
  
dplyr is an R package (library) that implements this Grammar of Data Manipulation
  it provides functions which mirror the "plain-English" verbs we use to describe data wrangling tasks

loading dplyr 
install.packages("dplyr")
library("dplyr") #everytime we want to use this package, we need to load it by calling the library to action 

name<- c("Ada", "Bob", "Chris")
height <- c(64, 74, 69)
weight <- c(135, 156, 139)
people <- data.frame(name, height, weight, stringsAsFactors = FALSE)
print(people)

select(people, name) #quotes are not needed to go around columns

votes <- select(presidentialElections, year, demVote) IS IDENTICAL to votes <- presidentialElections[, c("year", "demVote")]

filter(people, height > 70, weight < 155)
mutate(people, age = height/3)
people <- mutate(people, age = 3) #mutate doesn't actually change the data frame, it makes a NEW data frame with that column

summarize = generate a new data frame that has aggregation summaries of particular columns

summarize(people, max_height = max(height), avg_weight = mean(weight), total_weight = sum(weight), count = n())

c(2.1, 5.35, 9.4621) %>% round(1)
%>% # COMMAND SHIFT "M"
  
PRESIDENTIALELECTIONS %>% 
  filter(year == 2008) %>% 
  fi;ter(demVote == max(demVote)) %>% 
  pull(state)




