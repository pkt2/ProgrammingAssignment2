## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  ## Taking a Null vector
  i <- NULL
  
  ## Setting up the matrix
  set <- function( matrix ) {
    m <<- matrix
    i <<- NULL
  }
  
  ## Getting that matrix
  get <- function() {
    m
  }
  
  ## Setting up the inverse of the matric
  setInverse <- function(inverse) {
    i <<- inverse
  }
  
  ## Getting the inverse of the matrix
  getInverse <- function() {
    i
  }
  
  ## Here we return the list of all the methods
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  
  ## Return a matrix which if inverse of x
  m <- x$getInverse()
  
  ## Returning the inverse if it is already been set
  if( !is.null(m) ) {
    message("getting cached data")
    return(m)
  }
  
  data <- x$get()
  
  ## Calculating the inverse
  m <- solve(data) %*% data
  
  x$setInverse(m)
  
  ## Finally returning the matrix
  m
}
