## Put comments here that give an overall description of what your
## functions do

##As inverting a matrix can be a timeconsuming and costly operation (moreso when
##done often), this functions looks to be able to cache the inverse of a matrix 
##being more efficient.


## Write a short comment describing this function

##the make cache function does the following:
##  set the value of the inverse matrix (null at first)
##  gets the value of the matrix to be reversed
## sets and gets the inverse matrix

makeCacheMatrix <- function(x = matrix()) {
  inversa <- NULL
  set <- function(y) {
    x <<- y
    inversa <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inversa <<- inverse
  getinverse <- function() inversa
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
    
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inversa <- x$getinverse()
  if(!is.null(inversa)) {
    message("getting cached data.")
    return(inversa)
  }
  data <- x$get()
  inversa <- solve(data)
  x$setinverse(inversa)
  inversa
}
