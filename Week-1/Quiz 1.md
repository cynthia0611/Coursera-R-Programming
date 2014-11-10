####Question 1
R was developed by statisticians working at
#####Answer
```
The University of Auckland
```
-----------------------------
####Question 2
The definition of free software consists of four freedoms (freedoms 0 through 3). Which of the following is NOT one of the freedoms that are part of the definition?
#####Answer
```
The freedom to improve the program, and release your improvements to the public, so that the whole community benefits.
```
-------------------------
####Question 3
In R the following are all atomic data types EXCEPT
#####Answer
```
matrix
```
----------------------
####Question 4
If I execute the expression x <- 4 in R, what is the class of the object 'x' as determined by the 'class()' function?
#####Answer
```
numeric
```
----------------------
####Question 5
What is the class of the object defined by the expression x <- c(4, "a", TRUE)?
#####Answer
```
character
```
#####Explanation
```
> x <- c(4, "a", TRUE)
> class(x)
[1] "character"
```
------------------
####Question 6
If I have two vectors x <- c(1,3, 5) and y <- c(3, 2, 10), what is produced by the expression cbind(x, y)?
#####Answer
```
 a numeric matrix with 3 rows and 2 columns
```
#####Explanation
```
> x <- c(1,3, 5)
> y <- c(3, 2, 10)
> cbind(x,y)
     x  y
[1,] 1  3
[2,] 3  2
[3,] 5 10
```
-----------------------
####Question 7
A key property of vectors in R is that
#####Answer
```
elements of a vector all must be of the same class
```
------------------------------
####Question 8
Suppose I have a list defined as x <- list(2, "a", "b", TRUE). What does x[[1]] give me?
#####Answer
- a numeric vector containing the element 2.
- a character vector containing the element "2".
- a list containing a numeric vector of length 1.
- a list containing the letter "a".
------------------------
####Question 9
Suppose I have a vector x <- 1:4 and y <- 2:3. What is produced by the expression x + y?
#####Answer
```
an integer vector with the values 3, 5, 5, 7.
```
#####Explanation
```
> x <- 1:4
> y <- 2:3
> x+y
[1] 3 5 5 7
```
--------------------
####Question 10
Suppose I have a vector x <- c(17, 14, 4, 5, 13, 12, 10) and I want to set all elements of this vector that are greater than 10 to be equal to 4. What R code achieves this?
#####Answer
```
x[x == 10] <- 4
```
----------------
####Question 11
In the dataset provided for this Quiz, what are the column names of the dataset?
1, 2, 3, 4, 5, 6
#####Answer
Ozone, Solar.R, Wind, Temp, Month, Day
#####Explanation
```
> data<-read.table('H:/Desktop/Data Specialist/R programming/Quiz1/rprog_data_quiz1_data/hw1_data.csv',header=TRUE,sep=",")
> head(data)
  Ozone Solar.R Wind Temp Month Day
```
-------------------------------
####Question 12
Extract the first 2 rows of the data frame and print them to the console. What does the output look like?

#####Answer
```
  Ozone Solar.R Wind Temp Month Day
1    41   190   7.4   67     5   1
2    36   118   8.0   72     5   2
```
#####Explanation
```
> head(data,2)
Ozone Solar.R Wind Temp Month Day
1 41 190 7.4 67 5 1
2 36 118 8.0 72 5 2
```
------------------------------------
####Question 13
How many observations (i.e. rows) are in this data frame?
#####Answer
```
153
```
#####Explanation
```
> nrow(data)
[1] 153
```
------------------------------
####Question 14
Extract the last 2 rows of the data frame and print them to the console. What does the output look like?
#####Answer
```
Ozone Solar.R Wind Temp Month Day
152    18     131  8.0   76     9  29
153    20     223 11.5   68     9  30
```
#####Explanation
```
> tail(data,2)
Ozone Solar.R Wind Temp Month Day
152 18 131 8.0 76 9 29
153 20 223 11.5 68 9 30
```
-------------------------
####Question 15
What is the value of Ozone in the 47th row?
#####Answer
```
21
```
#####Explanation
```
> data[47,]
Ozone Solar.R Wind Temp Month Day
47    21     191 14.9   77     6  16
```
-------------------------------------
####Question 16
How many missing values are in the Ozone column of this data frame?
#####Answer
```
37
```
#####Explanation
```
#Calculate how many missing data
> length(which(is.na(data)))
[1] 44
#Calculate how many missing date with column name of Ozone
> datana<-subset(data,is.na(Ozone))
> nrow(datana)
[1] 37
```
-------------------------------
####Question 17
What is the mean of the Ozone column in this dataset? Exclude missing values (coded as NA) from this calculation.
#####Answer
```
42.1
```
#####Explanation
```
> datanotna<-subset(data,!is.na(Ozone))
> apply(datanotna,2,mean)
    Ozone   Solar.R      Wind      Temp     Month       Day 
42.129310        NA  9.862069 77.870690  7.198276 15.534483 
```
-----------------------------
####Question 18
Extract the subset of rows of the data frame where Ozone values are above 31 and Temp values are above 90. What is the mean of Solar.R in this subset?
#####Answer
```
212.8
```
#####Explanation
```
> datasub18<-subset(data,data$Ozone>31 & data$Temp>90,select=Solar.R)
> apply(datasub18,2,mean)
Solar.R 
  212.8 
```
----------------------------------
####Question 19
What is the mean of "Temp" when "Month" is equal to 6?
#####Answer
```
79.1
```
#####Explanation
```
> datasub19<-subset(data,data$Month==6,select=Temp)
> apply(datasub19,2,mean)
Temp 
79.1 
```
-----------------------------
####Question 20
What was the maximum ozone value in the month of May (i.e. Month = 5)?
#####Answer
```
115
```
#####Explanation
```
> datasub20<-subset(data,!is.na(Ozone)&data$Month==5,select=Ozone)
> apply(datasub20,2,max)
Ozone 
  115 
```

