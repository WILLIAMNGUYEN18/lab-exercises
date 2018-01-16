## Part 1: Debugging

my.num <- 6
initials <- "?. ?."

my.vector <- c(my.num, initials)

# run ?sum to get more info
?sum
vector.sum <- sum(my.vector)

# Describe why this doesn't work: 
# It takes in numeric, complex, or logical vectors.
# Because of this, it doesn't accept character as an appropriate argument

install.packages("stringr")

my.line <- "Hey, hey, this is the library"

print(str_length(my.line))

# Describe why this doesn't work: 
# We haven't placed the package stringr into our library, so the function doesn't exist yet.

said.the.famous <- paste(my.line, " - ", initial)

# Describe why this doesn't work: 
# Initial doesn't exist. We haven't created it yet, so it can't concatenate it.


## Part 2 - Vector and function practice

# Make a vector and use typeof to check what type R considers it to be
vector.example <- 0:5
typeof(vector.example)
# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"

CompareLength <- function(vector.one,vector.two){
  store.number <- length(vector.one) - length(vector.two)
  store.phrase <- paste("The difference in lengths is",abs(store.number))
  return (store.phrase)
}


# Pass two vectors of different length to your `CompareLength` function

vector.ex2 <- 0:4
CompareLength(vector.example, vector.ex2)

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(vector.one, vector.two){
  store.number <- length(vector.one) - length(vector.two)
  if(store.number > 0){
    store.phrase <- paste("Your first vector is longer by", store.number)
    return (store.phrase)
  }
  if(store.number < 0){
    store.phrase <- paste("Your second vector is longer by", store.number)
    return (store.phrase)
  }
  
}
# Pass two vectors to your `DescribeDifference` function
DescribeDifference(vector.example,vector.ex2)

# Write a function `CombineVectors` that takes in 3 vectors and combines them into one
CombineVectors <- function(vector.one,vector.two,vector.three){
  combined.vector <- c(vector.one,vector.two,vector.three)
  return (combined.vector)
}
# Send 3 vectors to your function to test it.
vector.ex3 <- 5:20
CombineVectors(vector.example,vector.ex2,vector.ex3)
# Write a function `CapsTime` that takes in a vector of names of courses you're taking, ex "Informatics 201" and removes all capital letters

CapsTime <-function(courses){
  gsub("[A-Z]","", courses)
}
