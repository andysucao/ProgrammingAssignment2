## Put comments here that give an overall description of what your functions do


## This function creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) 
      {
      xinv <- NULL
      set <- function(y = matrix()) 
      {
            x <<- y
            xinv <<- NULL
      }
      get <- function() 
      {
            x
      }
      setinv <- function(xinv2) 
      {
            xinv <<- xinv2
      }
      getinv <- function() 
      {
            xinv
      }
      list(set = set, 
           get = get,
           setinv = setinv,
           getinv = getinv)      
}


## This function computes the inverse of the special "matrix" returned by 
## makeCacheMatrix above. If the inverse has already been calculated 
## (and the matrix has not changed), then the cachesolve should retrieve 
## the inverse from the cache

cacheSolve <- function(x, ...) 
      {
      ## Return a matrix that is the inverse of 'x'
      
      xinv3 <- x$getinv()
      
      if(!is.null(xinv3)) 
      {
            message("getting cached data")
            return(xinv3)
      }
      
      x4 <- x$get()
      
      xinv4 <- solve(x4)
      
      x$setinv(xinv4)
      
      xinv4
}





