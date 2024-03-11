##USF LIS 6317 -Open Source R for Data & Info 
#Module 9 - Visualization in R

#In this module, we reviewed three types of visualization in R:  
#1 basic visualization without any package
#2 lattice  
#3 ggplot2

#Choose any data set for your visualization from Vincent Arel Bundock dataset 
#list: https://vincentarelbundock.github.io/Rdatasets/datasets.html 
#Links to an external site. Using this data, generate three types of 
#visualization on the data set you have chosen. In your blog, discuss and 
#present your three visualizations you will create and express your opinion 
#on these three different types of graphics output.

#data set chosen is "Radioimmunoassay of IGF-I Protein" (IGF.csv) ...
#from the nlme package

#install tidyverse
install.packages(c('quantmod','ff','foreign','R.matlab'),dependency=T)
library(tidyverse)

#import data set
mod9 = read.table('IGF.csv', sep=",", header=1)

#to check data importation 
str(mod9)

#to view first 10 rows of data
head(mod9,10) 

#1) Basic visualization w/o package: 
#filter data
qone <- c(mod9$age, mod9$conc)
#create a boxplot
boxplot(qone, col="lightgreen", main="Radioimmunoassay of IGF-I Protein", ylab= 
          "Concentration of IGF-I protein (ng/ml)")

#2) Lattice:
#first install package
install.packages("lattice")
#to respond to prompt
Yes
#to get lattice library
library(lattice)
#plot the lattice
xyplot(conc~age, data = mod9, col="blue", main="Radioimmunoassay of IGF-I 
       Protein", ylab="IGF-I Protein Concentration (ng/ml)", xlab = "Age of 
       Radioactive Tracer (days)", grid= TRUE)
#try lattice wireframe graphics
wireframe(qone,shade=TRUE, aspect=c(61/87,0.4), light.source =c(10,0,10))

#3) The ggplot
#get the ggplot2 library
library(ggplot2)
#create the ggplot for mod9 data
qthree <- ggplot(mod9, aes(age, conc)) + geom_line(linetype=3)
#view results
print(qthree)












