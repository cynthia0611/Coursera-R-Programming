# Q1
setwd('G:/Data Science Speciality Track/R programming')
getwd()
#  look at the 'iris' dataset that comes with R.
library(datasets)
data(iris)
# A description of the dataset can be found by running
?iris
str(iris)
head(iris)
virginica<-subset(iris,Species == 'virginica')

sl<-data.frame(virginica$Sepal.Length)

sl<-data.frame(iris$Sepal.Length[iris$Species=="virginica"])
sl
summary(sl)
#  Mean   :6.588 

# Q2
#  Simple: either the rows (1), the columns (2) or both (1:2)
apply(iris[, 1:4], 2, mean)# by columns
# Sepal.Length  Sepal.Width Petal.Length  Petal.Width 
# 5.843333     3.057333     3.758000     1.199333
apply(iris[, 1:4], 1, mean)# by rows

# Q3
# Load the 'mtcars' dataset 
library(datasets)
data(mtcars)

# object names 'mtcars' in your workspace
# information about the dataset by running
?mtcars
str(mtcars)
head(mtcars)
# calculate the average miles per gallon (mpg) 
# by number of cylinders in the car (cyl)
tapply(mtcars$cyl, mtcars$mpg, mean)
# Apply a function to each cell of a ragged array, 
# that is to each (non-empty) group of values 
# given by a unique combination of the levels of certain factors.
apply(mtcars, 2, mean)# mean for every column
sapply(split(mtcars$mpg, mtcars$cyl), mean)
# 4        6        8 
# 26.66364 19.74286 15.10000
# sapply is a user-firendly version of lapply 
# by default returning a vector or matrix if appropriate
# description of lapply:
# lapply returns a list of the same length as X, 
# each element of which is the result of applying FUN 
# to the corresponding element of X

# create a list with 2 elements
l <- list(a = 1:10, b = 11:20)
# the mean of the values in each element
lapply(l, mean)
# $a
# [1] 5.5
# 
# $b
# [1] 15.5

# the sum of the values in each element
lapply(l, sum)
# $a
# [1] 55
# 
# $b
# [1] 155

# answer is: sapply(split(mtcars$mpg, mtcars$cyl), mean)

# also: with(mtcars, tapply(mpg, cyl, mean))

# Q4
# the absolute difference between
# the average horsepower of 4-cylinder cars and 
# the average horsepower of 8-cylinder cars

abs(mean(split(mtcars, mtcars$cyl)$'4'$hp) - mean(split(mtcars, mtcars$cyl)$'8'$hp))
# 126.5779

# Q5
debug(ls)
ls()
# You will be prompted to specify at which line of the function 
# you would like to suspend execution and enter the browser.
debugonce()
# when you need to quit the status debug
# type help at the Browse[]>
# Answer: Execution of 'ls' will suspend at the beginning of the function and you will be in the browser. 
