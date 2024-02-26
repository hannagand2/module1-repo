##USF LIS 6317 -Open Source R for Data & Info 
#module 7 - R Objects, Classes and Methods

#install package pryr -to test object types
install.packages("pryr")
library(pryr)


#Assignment: 
#Step 1: Download any type of data (from the web or use data sets package) 
#or create your own set. 

#selected the built-in dat set : "iris"
data(iris)
head(iris)

#Step 2: Determine if generic functions as discussed in this 
#module can be assigned to your data set, and if not, why? 
print(iris)
summary(iris)
#Answer: Yes, the stated specific above generic functions can be assigned to 
#the "iris" data set.


#Step 3: Explore if S3 and S4 can be assigned to your data set.
#these are used for S3 and S4 object management
ls(iris)
rm(iris)
class(iris)
mode(iris)


#Step 4: in your blog, discuss the following questions:
#How do you tell what OO system (S3 vs. S4) an object is associated with?
#How do you determine the base type (like integer or list) of an object?
#What is a generic function?
#What are the main differences between S3 and S4?

#Step 5: In your GitHub, create two examples of S3 and S4:
#Example of data set for S3:
s3 <- list(species = "homo sapien", age = 88, height = 58) 
s3

class(s3)="animals"
attributes(s3)


#For S4 it is a reminder, S4 objects are created using the new() function. 
animals <- setClass("animals", slots=list(species = "character", age ="numeric", height = "numeric"))
s4 <- new("animals", species = "homo sapien", age = 88, height = 58) 
s4



#use to check if object is S4 with this function below:
otype(s4)
isS4(s4)
