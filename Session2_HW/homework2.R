# Origin: Homework 2
# Filename: homework2.r
# Author: Gregory Dannay
# Last modified: 22 September 2016

#QUESTION 1
#We define a different p for every loop by taking a random value

w0 <- 100 # Initial wealth
T <- 10000  # Terminal time

# Create empty objects to fill

w <- rep(0, T+1) # Vector of wealth
x <- rep(0, T) # Vector of win/loss

# Fill initial wealth
w[1] = w0

for(t in 1:T){
  # A random draw
  u <- runif(1)
  # A random probability of win
  p <- runif(1)
  
  if(u <= 1 - p){
    x[t] <- 0
    w[t+1] <- w[t] - 1
  } else {
    x[t] <- 1
    w[t+1] <- w[t] + 1
  }
}

time = 0:T
plot(time, w, v, type='l')



# QUESTION 2
# We define a different p for every loop by taking a random value
# We also define the random shock outside the loop that takes only one constant value

w0 <- 100 # Initial wealth
T <- 10000  # Terminal time
z <- runif(1) # Constant random shock

# Create empty objects to fill
x <- rep(0, T) # Vector of wealth
y <- rep(0, T) # Vecotr of win/loss

# Fill initial wealth
v[1] = w0

for(t in 1:T){
  # A random probability of win
  p <- runif(1)

  if(z <= 1 - p){
    y[t] <- 0
    v[t+1] <- v[t] - 1
  } else {
    y[t] <- 1
    v[t+1] <- v[t] + 1
  }
}

time = 0:T
plot(time, v, type='l')



# QUESTION 3

maxval <- max(w, v)
minval <- min(w, v)
plot(time, w, type='l', col='blue', ylim=c(minval, maxval), main = "Plot of question 1 and 2", ylab="wealth", xlab="Bets")
lines(time, v, type='l', col='green')
legend("bottomright", legend = c("p and u are random", "u is fixed"), col=(c("blue", "green")), lty=(c(1,1)))



# QUESTION 4
# We define a variable M that is going to add every value of the wealth inside the loop
# We divide this variable M by T at the end

w0 <- 100 # Initial wealth
p <- 0.5 # Probability of a win
T <- 10000  # Terminal time
M <- 0 # Variable that is going to add the wealth at each period

# Create empty objects to fill
w <- rep(0, T+1)
x <- rep(0, T)

# Fill initial wealth
w[1] = w0

for(t in 1:T){
  # A random draw
  u <- runif(1)
  if(u <= 1 - p){
    x[t] <- 0
    w[t+1] <- w[t] - 1
  } else {
    x[t] <- 1
    w[t+1] <- w[t] + 1
  }
  M = M + w[t] #Add the current wealth to the sum
}

M = M/T #Compute the mean



# QUESTION 5
#Same as before except that p is going to take a rando value in every loop


w0 <- 100 # Initial wealth
T <- 10000  # Terminal time
M <- 0 # Variable that is going to add the wealth at each period

# Create empty objects to fill
w <- rep(0, T+1)
x <- rep(0, T)

# Fill initial wealth
w[1] = w0

for(t in 1:T){
  # A random draw
  u <- runif(1)
  # A random probability
  p <- runif(1)
  
  if(u <= 1 - p){
    x[t] <- 0
    w[t+1] <- w[t] - 1
  } else {
    x[t] <- 1
    w[t+1] <- w[t] + 1
  }
  M = M + w[t] #Add the current wealth to the sum
}

M = M/T #Compute the mean