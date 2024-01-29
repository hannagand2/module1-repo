##USF LIS 6317 -Open Source R for Data & Info 
#Assignment # 3
#The data set below is based on the presidential election during 2016, 
#where it outlined the name of the candidate, the source of the poll 
#(ABC vs, CBS). Discuss your result in your blog. Important note, 
#I made up this data, so this data does not reflect what really 
#happened in the election.

# step 1 : create the 3 vectors
Name <- c("Jeb","Donald","Ted","Marco","Carly","Hillary","Bernie")
ABC <- c(4,62,51,21,2,14,15)
CBS <- c(12,75,43,19,1,21,19)

#creating data frame with above data
political_results <- data.frame(Name, ABC, CBS)

#to print results
print(political_results)