## 

## set the value of the matrix
##get the value of the matrix
##set the value of the inverse
##get the value of the inverse



makeCacheMatrix <- function(x = matrix()) {

  i <- NULL
  set <- function(y) {x <<- y    
  i <<- NULL}
  get <- function() x
  setmatrix <- function(inverse)
    i <<- inverse
  getmatrix <- function() i
  list(set = set, get = get,
       setmatrix = setmatrix,
       getmatrix = getmatrix)
}

## Firstly checks 'i' to see if it already contains an inverse value. 
## If 'i' is NULL then the 'solve' function calculates the inverse of the matrix and sets it to 'i'.
##If 'i' is not NULL then returns the stored value of 'i'.


cacheSolve <- function(x=matrix(), ...) {
  i <- x$getmatrix()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setmatrix(i)
  i
}



