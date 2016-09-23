# QUESTION 1

#' Add all numbers of a common vector
#' 
#' @author Tyler Abbot
#' @param x vector: a vector with a serie of number
#' @return The sum of all nubers included in the vector
#' @export
our_sum <- function(x){
  summation <- 0
  for(i in x){
    summation <- summation + i
  }
  return(summation)
}



# QUESTION 2

rand_sample <- function(n, F_inv=function(x) x^2){
  unif_sample <- runif(n, 0, 10)
  print(unif_sample)
  return(F_inv(unif_sample))
}

rand_sample(10)