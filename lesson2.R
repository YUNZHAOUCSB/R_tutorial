# intro to R part 2
fahrenheit_to_kelvin <- function(temp_F){
  temp_K <- (temp_F-32)*(5/9)+273.15
  return (temp_K)
}

fahrenheit_to_kelvin(32)

kelvin_to_celsius <- function(temp_K){
  temp_C <- temp_K - 273.15
  return (temp_C)
}
kelvin_to_celsius(0)

fahrenheit_to_celsius <- function(temp_F){
  temp_K <- fahrenheit_to_kelvin(temp_F)
  temp_C <- kelvin_to_celsius(temp_K)
  return (temp_C)
}
fahrenheit_to_celsius(32)
kelvin_to_celsius(fahrenheit_to_kelvin(32))
x <- c("A","B","C")
center <- function(data, desired){
  new_data <- (data-mean(data)+desired)
  return (new_data)
}
dat <- read.csv('inflammation-01.csv',header=FALSE)
centered <- center(dat[,4],0)
sd(centered)
?all.equal
all.equal(sd(dat[,4]),sd(centered))

best_practice <- c("write", "programs", "for", "people", "not", "computers")
asterisk <- "***"
fence(best_practice, asterisk)
dat <- read.csv("inflammation-01.csv",TRUE)
head(dat)
?center

center <- function(data,desired=0){
  new_data <- data-mean(data)+desired
  return (new_data)
}
center(dat[,2])
rescale <- function(vector){
  new_vector <- (vector-min(vector))/(max(vector)-min(vector))
  return (new_vector)
}
vector = c(3,2,5,7)
rescale(vector)
B = matrix( c(2, 4, 3, 1, 5, 7), nrow=3, ncol=2) 
test_data <- c(0,0,0,0)
center(test_data,3)
more_data <- 5+test_data
center(more_data)
