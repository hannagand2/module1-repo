##USF LIS 6317 -Open Source R for Data & Info 
#Module 7 - R Objects, Classes and Methods


#Step 1: Import assignment 6 Data-set to R Download Import assignment 6 
#Data-set to R. Then, Run the commend "mean" using Sex as the category 
#(use plyr package for this operation). Last commend in this step: write the 
#resulting output to a file.

x = read.table("Assignment 6 Dataset.txt", header = TRUE, sep=",")
x
#manually imported txt file in environment below

#next installed packages / pryr
install.packages("pryr")
require(pryr)
require(ISLR)
require(boot)

install.packages("plyr")
library(data.table)
library(plyr)
#above works

#then read the file with given prompt
SA6 <- read.table("Assignment 6 Dataset.txt", header = TRUE)

#to view results
SA6

#to filter out
y = ddply(x,"Sex",transform.data.frame,Grade.Average=mean(Grade))

#to print results
y

#to find mean of Sex
sex = x$Sex
mean(sex) #this produced NA because the value is not numerical
#above received warning  message

#Step 2: Converted the data set to a data frame for names containing the
#letter i, then created a new data set with those names. Write those names to a 
#file separated by comma’s (CSV)

#below works -yay
write.table(y,"Sorted_average")

#modified further
write.table(y,"Sorted_Average",sep=",")

#Filtered the original data set to include only data for 
#which the student name contained the letter i:
i_students <- subset(x, grepl("[iI]", Name, ignore.case=T))

#to view
i_students

#Step 3: Then wrote the filtered data set and converted to CSV file
subset(x,grepl("iI",x$Name))

write.table(i_students,"DataSubset",sep=",")





