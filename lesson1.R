# testing R
3
# Adding 
3+4
#pwd
getwd()
#cd
setwd("~/Desktop/workshop/data/")
#ls
list.files()
read.csv(file="inflammation-01.csv",header=FALSE)
#variables
3
a <-3
weight_kg <- 100
weight_kg

weight_kg *2.2
weight_lb <- weight_kg * 2.2
weight_lb
dat <- read.csv(file='inflammation-01.csv',header=FALSE)
head(dat)
class(dat)
dim(dat)
dat[1,1]
dat[30,20]
c(1,2,3)
dat[c(1,3,5),c(10,20)]
1:5
dat[1:5,1:10]
dat[-1,-1]
dat[1,]
dat[,16:19]
ne <- c(1,2,4,34,123,5454,34513)
ne[1:3]
dat[,]
dat[1,]
max(dat[1,])
min(dat[1,])
mean(dat[1,])
average(dat[1,])
?mean()
mean(dat[,7])
median(dat[2,])
dat[2,]
dat[,2]
summary(dat)
dat
apply(dat,1,mean)
apply(dat,2,mean)
a <- c(1,2,3)
a
a*3
animal <- c('m','o','n','k','e','y')
animal
?c
avg_day_inflammation = apply(dat, 2, mean)
plot(avg_day_inflammation)
avg_day_inflammation
max_day_inflammation <- apply(dat, 2 ,max)
plot(max_day_inflammation)
