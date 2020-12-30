
rm(list = ls())
source("cachematrix.R")




x3 <- matrix (1:4, 2, 2)

y3 <- makeCacheMatrix(x3)

cacheSolve(y3)

cacheSolve(y3)


