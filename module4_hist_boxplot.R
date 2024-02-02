##USF LIS 6317 -Open Source R for Data & Info 

#The assignment:

# The following data was collected by the local hospital. This data set contains 
# five variables based on observation of 10** patients. In addition to the measurements
# of the patients checking in to the hospital that night, this data provides the 
# patients' histories regarding the frequency of their visits to the hospital 
# in the last 12 months.

# This data displays the measurement of blood pressure as "BP" 

# then ("First") first assessment by general doctor (bad=1, good =0) ,

# then ("Second") assessment by external doctor, 

# and then ("Final") last row provides the head of the emergency unit's 
# decision regarding immediate care for the patient based on the values 
# 0 or 1 (low = 0, high =1).

# The names of your variables are as follows: "Freq","bloodp","first”, 
# "second”, ”finaldecision”

#The rows :
#1.    "0.6","103","bad","low","low”
#2.     "0.3","87","bad","low","high”
#3.     "0.4","32","bad","high","low”
#4.      "0.4","42","bad","high","high"
#5.     "0.2","59","good","low","low”
#6.      "0.6","109","good","low","high”
#7.     "0.3","78","good","high","low”
#8.      "0.4","205","good","high","high”
#9.      "0.9","135",”NA","high","high"
#10.    "0.2","176",”bad","high","high”

#Step 1 : Create vectors
Frequency <- c(0.6,0.3,0.4,0.4,0.2,0.6,0.3,0.4,0.9,0.2)
BP <- c(103,87,32,42,59,109,78,205,135,176)
First <- c(1,1,1,1,0,0,0,0,NA,1)
Second <- c(0,0,1,1,0,0,1,1,1,1)
FinalDecision <- c(0,1,0,1,0,1,0,1,1,1)

#need to account for missing values in "First" 
mean(First) #does not work
mean(First,na.rm=TRUE) # yes, only this line works

#Step 2: For BP and MD Ratings: Create a side-by-side boxplot (boxplot(x, ...)) 
# & histogram ((hist(x, ...))

#create boxplot of MD ratings and BP
boxplot(Frequency)
boxplot(BP)
boxplot(First)
boxplot(Second)
boxplot(FinalDecision)

par(mfrow=c(1,2))

box4 <-boxplot(Frequency,BP,First,Second,FinalDecision, main ="Patient Measurements and Ratings",
col = "red", border ="blue", names=c("Frequency","BP","First","Second","FinalDecison"))

#histogram of MD ratings and BP
hist(Frequency)
hist(BP)
hist(First)
hist(Second)
hist(FinalDecision)

par(mfrow=c(1,2))

hist4 <- hist(Frequency,BP,FinalDecision, main ="Patient 
              Measurements and Ratings",
               col = "orange","red","blue", 
              names=c("Frequency","BP","FinalDecison"))
              






