## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  setM <- function(y) {
    x <<- y
    m <<- NULL
  }
  getM <- function() x 
  setInverseM <- function(inverseM) m <<- inverseM
  getInverseM <- function() m
  list(setM = setM, getM = getM,setInverseM = setInverseM,getInverseM = getInverseM)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getInverseM()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$getM()
  m <- solve(data, ...)
  x$setInverseM(m)
  m
}
