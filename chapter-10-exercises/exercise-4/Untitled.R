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

DATA WRANGLING II: Groups, Joins, Tidyr 

students %>% group_by(section) %>% filter(exam2_grade == max(exam2_grade))

left_join() combines two tables into a data frame with the columns of both. left_join() takes the rows of the left able and adds columns from the right table


student_contact <- data.frame(  student_id = c(1, 2, 3, 4), # id numbers  
                                email = c("mason@uw.edu", "tabi@uw.edu", "bryce@uw.edu", "ada@uw.edu"))

# Table of information about majors
student_majors <- data.frame(  
  student_id = c(1, 5, 4, 2),  # id numbers  
  major = c('sociology', 'biology', 'math', 'informatics'))
left_join(student_contact, student_majors, by = "student_id")

Data Shape: we can covert between wide and long data (and vice versa) using the tidyr package

# Alternatively, install "tidyverse"
install.packages("tidyr")  # once per machine

library("tidyr")# An example wide data frame for demoing

students <- data.frame(  
  name = c('Mason', 'Tabi', 'Bryce', 'Ada', 'Bob', 'Filipe'),  
  section = c('a','a','a','b','b','b'),  
  math_exam1 = c(91, 82, 93, 100, 78, 91),   
  math_exam2 = c(88, 79, 77, 99, 88, 93),  
  spanish_exam1 = c(79, 88, 92, 83, 87, 77),   
  spanish_exam2 = c(99, 92, 92, 82, 85, 95))

students
long_students <- gather(students, key = assignment, value = grade, math_exam1:math_exam2)
spread(long_students, key = section, value = grade)







