## makeCacheMatrix 
## function caches the inverse of a matrix in global variable y
## 1) Initialize y,z & inv variable as NULL
## 2) Assign input matrix to global variable z
## 3) Assign inverse of input matrix to local variable inv
## 4) Assign value of inv to global variable y
## 5) Store original matrix (x variable) and inverse of matrix (inv variable) 
##    in a list       


makeCacheMatrix <- function(x = matrix()) {
  y <- NULL
  z <- NULL
  inv <- NULL

  z <<- x
  inv <- solve(x)
  y <<- inv
list(original = x,
    inverse = inv)

}

## cachesolve
## This function checks whether the inverse of matrix is already available. 
## If available then it returns the cached value else calculates the inverse of new matrix
## 1) Initialize variable t as NULL
## 2) Check whether inverse of a matrix is already available and has some value
## 3) If inverse found then return from cache
## 4) Else re calculate the inverse using function makecackematrix
## 5) Return the inverse of a matrix
cacheSolve <- function(x, ...) {
  t <- NULL
 
  if (identical(z,x) & !is.null(y)) 
  {message("getting cached data")
    return(y)
  }
  
  
  t <- makeCacheMatrix(x)  
  return(t$inverse)
  
}
