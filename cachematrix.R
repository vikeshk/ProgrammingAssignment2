## makeCacheMatrix function caches the value in global variable y
## Then y can be used in the environment other then its local evironment


makeCacheMatrix <- function(x = matrix()) {
  y <- NULL
  z <- NULL

  z <<- x
  y <<- solve(x)


}


## This function checks whether the inverse of matrix is already available. 
## If available then returns the cached value else calculates the inverse of new matrix

cacheSolve <- function(x, ...) {
  t <- NULL
 
  if (identical(z,x) & !is.null(y)) 
  {message("getting cached data")
    return(y)
  }
  
  
  t <- makeCacheMatrix(x)  
  return(y)
  
}
