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

#function that prints out numbers up to int 
print_N <-function(int){
  seq_num <- seq(int)
  for (a in seq_num){
    print (a)
  } 
}

getwd()
list.files()
list.files(pattern = 'inflammaiton')
list.files()
getwd()
setwd("/Users/YunZhao/Desktop/workshop/data")
filenames <- list.files(pattern = 'inflammation')
analyze <- function(filename) {
  # Plots the average, min, and max inflammation over time.
  # Input is character string of a csv file.
  dat <- read.csv(file = filename, header = FALSE)
  avg_day_inflammation <- apply(dat, 2, mean)
  plot(avg_day_inflammation)
  max_day_inflammation <- apply(dat, 2, max)
  plot(max_day_inflammation)
  min_day_inflammation <- apply(dat, 2, min)
  plot(min_day_inflammation)
}
for (a in filenames){
  analyze(a)
}
#function where:
#input is pattern
#analyze all files of that
#pattern

analyze_all <- function(pattern){
  filenames <- list.files(pattern=pattern)
  for (a in filenames){
    analyze(a)
  }
}
analyze_all('inflammation')
pdf('inflammation-01.pdf')
analyze('inflammation-01.csv')
dev.off()

num <- 37
if (num >100){
  print('greater')
} else{
  print ('not greater')
}

# is the number greater than 0
# function sign will return -1 for a negative number
# 0 for 0 

sign <- function(num){
  if (num<0){
    return (-1)
  } else if (num ==0){
    return (0)
  } else{}
  return (1)
}
sign(1)
sign(0)
sign(-1)
sign(0.3)
# conditional: is a equal to b?
a==b
# a is less than b
a<b
a>b
a <= b
a <= b
a =3
b=2
a<c & a>b
TRUE & FALSE
FALSE | FALSE
setwd("~/Desktop/workshop/data")
dat <- read.csv('inflammation-01.csv')
plot_dist <- function (data, use_boxplot=TRUE, threthold=10){
  if (length(data) < threthold){
    stripchart (data)
  }   else if (use_boxplot == TRUE){
    hist (data)
  } else {
    boxplot (data)
  }
}

plot_dist(dat[,10], use_boxplot=TRUE, 1)
boxplot(dat[,10])
hist(dat[,10])
?boxplot
?stripchart
plot_dist(seq(20),threthold = 100)
# ggplot and dplyr

install.packages('ggplot2')
library('ggplot2')
install.packages('dplyr')
library('dplyr')
setwd('~/Downloads/')
mammals <- read.csv("mammals.csv",head=T)
plot(adult_head_body_len_mm ~ adult_body_mass_g, data=mammals)
ggplot(data=mammals, aes(x=adult_body_mass_g, y=adult_head_body_len_mm)) + geom_point()
head(mammals)
glimpse(mammals)
View(mammals)
?plot
?ggplot
?geom_point
ggplot(data=mammals, aes(x=adult_body_mass_g, y=adult_head_body_len_mm))+geom_point(size=3,aes(color=order))
glimpse(mammals)

tails <- filter(mammals,order=="Rodentia")
glimpse(tails)
large_tails <- filter(mammals, order == "Rodentia" | adult_body_mass_g >100000)
glimpse(tails)
large_tails <- filter(mammals, order == "Rodentia" & adult_body_mass_g >100000)
glimpse(large_tails)
tmammals <- filter(mammals, habitat == "T")
colnames(tmammals)
View(arrange(tmammals, adult_body_mass_g))
