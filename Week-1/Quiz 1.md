#####Question 1
R was developed by statisticians working at

* Johns Hopkins University
* Microsoft
* Insightful
* **The University of Auckland**


#####Question 2
The definition of free software consists of four freedoms (freedoms 0 through 3). Which of the following is NOT one of the freedoms that are part of the definition?
* The freedom to study how the program works, and adapt it to your needs.
* The freedom to run the program, for any purpose.
* The freedom to improve the program, and release your improvements to the public, so that the whole community benefits.
* The freedom to restrict access to the source code for the software.

#####Question 3
In R the following are all atomic data types EXCEPT
* integer
* complex
* numeric
* matrix

#####Question 4
If I execute the expression x <- 4 in R, what is the class of the object 'x' as determined by the 'class()' function?
- real
- numeric
- complex
- matrix

#####Question 5
What is the class of the object defined by the expression x <- c(4, "a", TRUE)?
- numeric
- character
- mixed
- logical

#####Question 6
If I have two vectors x <- c(1,3, 5) and y <- c(3, 2, 10), what is produced by the expression cbind(x, y)?
- a numeric matrix with 3 rows and 2 columns
- a 3 by 3 matrix
- a 2 by 3 matrix
- a vector of length 3

#####Question 7
A key property of vectors in R is that
- a vector cannot have have attributes like dimensions
- the length of a vector must be less than 32,768
- elements of a vector can be of different classes
- elements of a vector all must be of the same class

#####Question 8
Suppose I have a list defined as x <- list(2, "a", "b", TRUE). What does x[[1]] give me?
- a numeric vector containing the element 2.
- a character vector containing the element "2".
- a list containing a numeric vector of length 1.
- a list containing the letter "a".

#####Question 9
Suppose I have a vector x <- 1:4 and y <- 2:3. What is produced by the expression x + y?
an error.
- a numeric vector with the values 1, 2, 5, 7.
- a numeric vector with the values 3, 5, 3, 4.
- an integer vector with the values 3, 5, 5, 7.

#####Question 10
Suppose I have a vector x <- c(17, 14, 4, 5, 13, 12, 10) and I want to set all elements of this vector that are greater than 10 to be equal to 4. What R code achieves this?
- x[x > 4] <- 10
- x[x == 10] <- 4
- x[x >= 11] <- 4
- x[x > 10] == 4

#####Question 11
======================
In the dataset provided for this Quiz, what are the column names of the dataset?
1, 2, 3, 4, 5, 6
####Answer
Ozone, Solar.R, Wind, Temp, Month, Day
####Explanation
```
> data<-read.table('H:/Desktop/Data Specialist/R programming/Quiz1/rprog_data_quiz1_data/hw1_data.csv',header=TRUE,sep=",")
> head(data)
  Ozone Solar.R Wind Temp Month Day
```

#####Question 12
Extract the first 2 rows of the data frame and print them to the console. What does the output look like?

  > Ozone Solar.R Wind Temp Month Day
- 1    18     224 13.8   67     9  17
- 2    NA     258  9.7   81     7  22

  > Ozone Solar.R Wind Temp Month Day
- 1    41     190  7.4   67     5   1
- 2    36     118  8.0   72     5   2

  > Ozone Solar.R Wind Temp Month Day
- 1     9      24 10.9   71     9  14
- 2    18     131  8.0   76     9  29

  > Ozone Solar.R Wind Temp Month Day
- 1     7      NA  6.9   74     5  11
- 2    35     274 10.3   82     7  17

#####Question 13
How many observations (i.e. rows) are in this data frame?
- 153
- 45
- 160
- 129

#####Question 14
Extract the last 2 rows of the data frame and print them to the console. What does the output look like?

  > Ozone Solar.R Wind Temp Month Day
- 152    11      44  9.7   62     5  20
- 153   108     223  8.0   85     7  25

  > Ozone Solar.R Wind Temp Month Day
- 152    18     131  8.0   76     9  29
- 153    20     223 11.5   68     9  30

  > Ozone Solar.R Wind Temp Month Day
- 152    31     244 10.9   78     8  19
- 153    29     127  9.7   82     6   7

  > Ozone Solar.R Wind Temp Month Day
- 152    34     307 12.0   66     5  17
- 153    13      27 10.3   76     9  18

#####Question 15
What is the value of Ozone in the 47th row?
- 63
- 21
- 18
- 34

#####Question 16
How many missing values are in the Ozone column of this data frame?
- 78
- 9
- 37
- 43

#####Question 17
What is the mean of the Ozone column in this dataset? Exclude missing values (coded as NA) from this calculation.
- 31.5
- 42.1
- 18.0
- 53.2

#####Question 18
Extract the subset of rows of the data frame where Ozone values are above 31 and Temp values are above 90. What is the mean of Solar.R in this subset?
- 212.8
- 334.0
- 205.0
- 185.9

#####Question 19
What is the mean of "Temp" when "Month" is equal to 6?
- 79.1
- 90.2
- 85.6
- 75.3

#####Question 20
What was the maximum ozone value in the month of May (i.e. Month = 5)?
- 115
- 97
- 100
- 18

