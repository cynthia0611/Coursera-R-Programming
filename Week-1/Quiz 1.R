#11
> getwd()
> setwd('G:/Data Science Speciality Track/R programming/Quiz')
> download.file(url='https://d396qusza40orc.cloudfront.net/rprog%2Fdata%2Fquiz1_data.zip',destfile='quiz1.zip')
> data<-read.table(unz("quiz1.zip","hw1_data.csv"),header=T,sep=',')

> head(data)
Ozone Solar.R Wind Temp Month Day
1    41     190  7.4   67     5   1
2    36     118  8.0   72     5   2
3    12     149 12.6   74     5   3
4    18     313 11.5   62     5   4
5    NA      NA 14.3   56     5   5
6    28      NA 14.9   66     5   6

#12
> head(data,2)
Ozone Solar.R Wind Temp Month Day
1    41     190  7.4   67     5   1
2    36     118  8.0   72     5   2

#13
> nrow(data)
[1] 153

#14
> tail(data,2)
Ozone Solar.R Wind Temp Month Day
152    18     131  8.0   76     9  29
153    20     223 11.5   68     9  30

#15
> data[47,]
      Ozone Solar.R Wind Temp Month Day
47    21     191 14.9   77     6  16

#16
> length(which(is.na(data)))
[1] 44
> datanacol<-subset(data,is.na(Ozone))
> nrow(datanacol)
[1] 37

#17
#apply 1 represent to calculate rows，2 represent to caluate colums，
#c(1,2)represent to calculate both
#http://blog.sina.com.cn/s/blog_6caea8bf0100xkpg.html
> dataozone<-subset(data,!is.na(Ozone))
> apply(dataozone,2,mean)
Ozone   Solar.R      Wind      Temp     Month       Day 
42.129310        NA  9.862069 77.870690  7.198276 15.534483 

#18
> data18<-subset(data,data$Ozone>31 & data$Temp>90,select=Solar.R)
> data18
Solar.R
69      267
70      272
120     203
121     225
122     237
123     188
124     167
125     197
126     183
127     189

> mean(data18[,])
[1] 212.8

#19
> datamonth6<-subset(data,data$Month==6)
> datamonth6
Ozone Solar.R Wind Temp Month Day
32    NA     286  8.6   78     6   1
33    NA     287  9.7   74     6   2
34    NA     242 16.1   67     6   3
35    NA     186  9.2   84     6   4
36    NA     220  8.6   85     6   5
37    NA     264 14.3   79     6   6
38    29     127  9.7   82     6   7
39    NA     273  6.9   87     6   8
40    71     291 13.8   90     6   9
41    39     323 11.5   87     6  10
42    NA     259 10.9   93     6  11
43    NA     250  9.2   92     6  12
44    23     148  8.0   82     6  13
45    NA     332 13.8   80     6  14
46    NA     322 11.5   79     6  15
47    21     191 14.9   77     6  16
48    37     284 20.7   72     6  17
49    20      37  9.2   65     6  18
50    12     120 11.5   73     6  19
51    13     137 10.3   76     6  20
52    NA     150  6.3   77     6  21
53    NA      59  1.7   76     6  22
54    NA      91  4.6   76     6  23
55    NA     250  6.3   76     6  24
56    NA     135  8.0   75     6  25
57    NA     127  8.0   78     6  26
58    NA      47 10.3   73     6  27
59    NA      98 11.5   80     6  28
60    NA      31 14.9   77     6  29
61    NA     138  8.0   83     6  30
> datamonth6[,4]
[1] 78 74 67 84 85 79 82 87 90 87 93 92 82 80 79 77 72 65 73 76 77 76 76 76 75 78 73 80 77 83
> mean(datamonth6[,4])
[1] 79.1

#20
> data20<-subset(data,!is.na(Ozone)&data$Month==5,select=Ozone)
> max(data20)
[1] 115
> apply(data20,2,max)
Ozone 
115 


