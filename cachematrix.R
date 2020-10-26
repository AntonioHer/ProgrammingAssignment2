## Put comments here that give an overall description of what your
## functions do

## I have used the makevector example as guide to do both functions, I just
## changed parameter names 

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  set2 <- function(inverse) inv <<- inverse
  get2 <- function() inv
  list(set=set, get=get, set2=set2, get2=get2)  

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$get2()
  
  if (!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data, ...)
  
  x$set2(inv)
  
  return(inv)
}
