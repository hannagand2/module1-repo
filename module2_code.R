#USF LIS 6317 -Open Source R for Data & Info 

#1st define the object "assignment 2"
assignment2 <- c(16, 18, 14, 22, 27, 17, 19, 17, 17, 22, 20, 22)
#2nd create the myMean function below
myMean <- function(assignment2) { return(sum(assignment2)/length(assignment2)) }

#3rd run my example with the function myMean
#does it work as a legit function?.....
m2 <- myMean(cars)
print(m2)

#Answer: yes it does!