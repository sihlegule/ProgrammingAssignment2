## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
makeCacheMatrix <- function(x = matrix()) {
invrse <- x$getinverse()
  if(!is.null(invrse)) {
    message("getting cached data")
    return(invrse)
  }
  data <- x$get()
  invrse <- solve(data, ...)
  x$setinverse(invrse)
  invrse
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  invrse <- NULL                           
    set <- function(y) {                    
    x <<- y                             
    invrse <<- NULL                      
  }
get <- function() x                     
setinverse <- function(inverse) invrse <<- inverse  
getinverse <- function() invrse                     
list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)       
}
