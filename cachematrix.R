## Put comments here that give an overall description of what your
## functions do
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  #define the set, get function
  set <- function(y){
    x <<- y
    m <<- NULL
  }
  get <- function() x
  #define the getuniverse, setuniverse function
  setinverse <- function(solveMatrix) m <<- solveMatrix
  getinverse <- function() m
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}

## Write a short comment describing this function
## This is to return a matrix that is the inverse of 'x'
cacheSolve <- function(x, ...) {
    m <- x$getinverse()
    if(!is.null(m)){
      message("getting cached data")
      return(m)
    }
    #get data
    data <- x$get()
    #calculate inverse
    m <- solve(data)
    #set the inverse to m
    x$setinverse(m)
    #return the result
    m      
  }
