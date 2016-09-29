# Origin: Homework 4
# Filename: homework4.r
# Author: Gregory Dannay
# Last modified: 29 September 2016


# QUESTION 1

# The function integrates a constant within the function
# while the code didn't proceed this way.


#QUESTION 2

# Whe have to define the vector as a matrix where one colum is contained of 1s and
# the other one with xs

require(MASS)

# Set the correlation parameter and mean
beta = 0.5
SIGMA = matrix(c(1,beta,beta,1), ncol=2)
MU = c(2.0, 1.0)

# Set the sample size
N = 50

# Draw your sample
out <- mvrnorm(N, mu = MU, Sigma = SIGMA)

# Our data set is named `out`, which we split into y and X
y <- out[, 2]
Z <- matrix(rep(1,N), ncol=1) # We create a matrix with one column filled with 1s
Z
X <- matrix(c(z,out[, 1]), ncol=2) # We add the column of 1s in the vector with the xs
X

# Now carry out intermediate calculations
XT = t(X)
XTX = XT%*%X
invXTX = solve(XTX)
XTy = XT%*%y
beta = invXTX %*% XTy
beta

# Now add this line to the plot
plot(out)
abline(lm(out[,2]~out[,1]), col="red") # regression line (y~x) 
abline(a=0, b=beta, col="blue")

# Even though I get a matrix with 1s and x, I didn't manage to get the same solution
# and I can't figure out why...


# QUESTION 3

#We just have to add a third random variable following a normal distribution by adding a Mu and 
#changing the 2x2 matrix to a 3x3 matrix

# Set the correlation parameter and mean
beta = 0.5
SIGMA = matrix(c(1,beta, beta, beta, 1, beta, beta, beta, 1), ncol=3)
MU = c(3.0, 2.0, 1.0)

# Set the sample size
N = 50

# Draw your sample
out <- mvrnorm(N, mu = MU, Sigma = SIGMA)
out

# Our data set is named `out`, which we split into y and X and w
y <- out[, 2]
Z <- matrix(rep(1,N), ncol=1)
Z
X <- matrix(c(z,out[, 1]), ncol=2)
X
W <- out[,3]
W

# Again I am blocked because I don't know how to input the variable into the calculation


# QUESTION 4

# We use the same parameters as before and create a arbitrarily large vector of means
beta = 0.5
step <- 0.001
MU <- c(seq(0, 3, step)) #We create a large vector of means
l <- length(MU)

#We create a matrix filled with 0s
SIGMA <- matrix(c(rep(0, l)), ncol = l)

i <- 1
c <- 0

# We create a double loop that is going to fill the matrix with the right values
while(i<l){ 
  SIGMA[i]=1
  while(c<l){
    SIGMA[i+c]=beta
    c<-c+1
    i<-i+1
  }
  c<-0
}
SIGMA

# The double loop is a way that is too long and moreover it didn't work out at all
# I am not able to finish this exercice as well