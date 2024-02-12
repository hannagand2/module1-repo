##USF LIS 6317 -Open Source R for Data & Info 

# module 5 lecture notes

#R separates between a vector and a matrix, but it does not state whether a 
#vector is a row or column is a vector. This does have its advantages, and 
#probably some disadvantages as well. If for any reason you need to force the 
#orientation of a vector, then create it as a matrix with one of its dimensions 
#set equal to one.

#In this example, I will go step by step and will start with creating a simple vector:
  
x=1:4
x

class(x)

#We can convert this to a column matrix using
X=matrix(x, ncol=1)
class(X)

x

#Notice that I’ve used a capital letter for the matrix version of the same set 
#of numbers here which is possible because R is case sensitive. The ncol 
#argument can be replaced by using the nrow argument if a row vector is required.
#The identity matrix is a diagonal matrix so we use the diag() command to create 
#it.

#For example:
I3=diag(3)
I3


#We often need to find the transpose of a matrix. The t() command does this.
M=matrix(1:6,nrow=2)
M
t(M)


#Next, Matrix and vector calculations:
  
#R uses the standard arithmetic operators on pairs of matrices (or vectors) 
#on an element-by-element basis.
#Addition of a constant to a vector or matrix is effected on all elements
#Example:

x+2
2+x

#Similarly, we can multiply a vector or matrix by a scalar using:
5*x
x*5

5*X

#It retains the size of the vector or matrix. Also note that pre-multiplying 
#by a scalar is equivalent to post-multiplying by a scalar, as should have 
#been expected. This is of course different to matrix multiplication.
#Matrix operations use different symbols from simple arithmetic operators to 
#distinguish the different results that might be desired.
#For example,
A=matrix(1:4, nrow=2)
B=matrix(7:10, nrow=2)
A*B

#It creates a matrix with elements based on simple multiplication of the paired 
#elements, not those based on proper matrix multiplication. If we want to 
#multiply two matrices, the order is important.
#For example:
A%*%B
B%*%A


#Multiplying a matrix by a vector is easily achieved, and R will orient the 
#vector to conform to the rules of matrix multiplication as required.
#Example:
y=c(3,4)
A%*%y
y%*%A


#The inverse of a matrix is used in many statistical procedures. 
#The solve() command inverts a square matrix.
#For example:
A
solve(A)

#If we want to solve the set of equations, represented in matrix form as Ax = b,
#we use the solve() command.
#Example:
A
b=c(5,7)
solve(A,b)

#The det() command is used for finding the determinant of a matrix.
#For example:
A
det(A)


#The trace of a matrix is not so easily found. There is a command that is 
#called trace() but this is not an algebraic function!!

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#The assignment:
#Find the value of inverse of a matrix, determinant of a matrix by using the 
#following values:

#"A=matrix(1:100, nrow=10)"
#"B=matrix(1:1000, nrow=10)"

#the determination of the A matrix is 0 which means it doesn't have an 
#inverse matrix and the B matrix isn't a square matrix, so it won't be able 
#to have an inverse either.

#set up matrix

M= matrix(data = NA, nrow = 1, ncol = 1, byrow = FALSE, dimnames = NULL)
A = matrix(1:100, nrow=10)
B = matrix(1:1000, nrow=10)
#A*B

#Transposed A and B 
t(B)

#created two vectors (a and b)
a <- matrix(1:100, nrow=10)  
b <- matrix(1:1000, nrow=10)

#multiplied the  matrices by the vectors
A%*%a
a%*%A


#Multiplied A by B
A%*%B

#then B by A 
#B%*%A #did not work

#For the inverse of matrix
S=matrix(2:5, nrow=2)

#to solve
solve(S)

#Then check det()
det(S)


