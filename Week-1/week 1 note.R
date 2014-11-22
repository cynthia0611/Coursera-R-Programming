Date and time in R

# date class: Date
# time class: POSIXct, POSIXlt
# dates are stored # of days since 1970-01-01
# times are stored # of seconds since 1970-01-01
x<-as.Date("1970-01-01")#"1970-01-01"
unclass(x)#[1] 0: the day since that day is 0 day
unclass(as.Date("1970-01-05"))#[1] 4
# POSIXct: very large integer, can store times into a data frame
# POSIXlt: list, can store more information, like day of the week, 
# day of the year, month, day of the month
# Generic functions:
# weekdays: the day of the week
# months: the month name
# quarters: quater number("Q1","Q2","Q3","Q4")
x<-Sys.time()#current time
x#[1] "2014-11-21 18:37:25 EST"
p<-as.POSIXlt(x)
p
names(unclass(p))
#[1] "sec"    "min"    "hour"   "mday"   "mon"    "year"   "wday"  
#[8] "yday"   "isdst"  "zone"   "gmtoff"
p$sec

x<-Sys.time()
x # already in "POSIXct' format
#[1] "2014-11-21 18:45:00 EST"
unclass(x)#[1] 1416613501
x$sec
# Error in x$sec : $ operator is invalid for atomic vectors
p<-as.POSIXlt(x)
p$sec#[1] 0.8160119

#strptime function: in case dates are in different format
datestring<-c("January 10,2012 10:40","December 9,2011 9:10")
x<-strptime(datestring,"%B %d, %Y %H:%M")
x
#%d=day %B=month %Y=year(4 digit) %H=hour %M=minute
class(x)
#[1] "POSIXlt" "POSIXt"
# Operations on Dates and Times
# +,-,==,<=
x<-as.Date("2012-01-01") 
y<-strptime("9 Jan 2011 11:34:21","%d %b %Y %H:%M:%S")
x-y

#Error in x - y : non-numeric argument to binary operator
#In addition: Warning message:
#  Incompatible methods ("-.Date", "-.POSIXt") for "-" 
x<-as.POSIXlt(x)
x-y

# leap years, leap seconds, daylight savings, time zone
x<-as.Date("3012-03-01") 
y<-as.Date("2012-02-28")
x-y#Time difference of 365244 days

x<-as.POSIXct("2012-12-25 01:00:00")
y<-as.POSIXct("2012-05-15 06:00:00",tz = "GMT")#tz: time zone
y-x #Time difference of -224 days

# Character strings coerced to Date/Time classed using
# strptime function
# as.Date
# as.POSIXlt
# as.POSIXct
