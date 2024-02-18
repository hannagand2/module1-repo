##USF LIS 6317 -Open Source R for Data & Info 
#module 6 - Doing Math part 2

#Assignment:

#1. Consider A=matrix(c(2,0,1,3), ncol=2) and B=matrix(c(5,2,4,-1), ncol=2).

#first need to create A and B matrices:
matrixA <- matrix (c(2,0,1,3), ncol=2)
matrixA

matrixB <- matrix(c(5,2,4,-1), ncol=2)
matrixB

#a) Find A + B
addAB <- matrixA + matrixB
addAB

#b) Find A - B
subAB <- matrixA - matrixB
subAB

#2. Using the diag() function to build a matrix of size 4 with the following 
#values in the diagonal 4,1,2,3.

# first create matrix
m2 <- matrix(1:16, nrow =4, ncol=4)
m2

#create vector with desired values:
v2 <- c(4,1,2,3) 

#insert vector w/ values into diagonal function:
diag(m2) <- v2
m2

#3. Generate the following matrix:
  
  ## [,1] [,2] [,3] [,4] [,5]
  ## [1,] 3 1 1 1 1
  ## [2,] 2 3 0 0 0
  ## [3,] 2 0 3 0 0
  ## [4,] 2 0 0 3 0
  ## [5,] 2 0 0 0 3
#Hint: You can use the command diag() to build it.

#Option1: w/o diag() -> this works
rbind(c(3,1,1,1,1), c(2,3,0,0,0), c(2,0,3,0,0), c(2,0,0,3,0), c(2,0,0,0,3))


#Option2: w/ diag():
m3 = matrix(0, nrow=5, ncol=5)
m3

m3[1:5, c(1)] <-2
m3

m3b<-m3
m3b

m3b[1,c(2,3,4,5)]<- 1
m3b

diag(m3b)<- 3
m3b