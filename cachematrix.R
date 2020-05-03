## Caching the inverse of a matrix
## functions do

## a function dealing with 

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y){
    x <<- y
    m <<- NULL
  }
  
  get <- function(){
    x
  }
  
  set_inverse <- function(solve) m <<- solve
  get_inverse <- function() m
  
  list(set = set, get = get,set_inverse = set_inverse,get_inverse = get_inverse)

}


## Finds the inverse of a matrix. If not cached, calculates and returns. If cached, returns that

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$get_inverse()
  
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  
  data<- x$get()
  m<- solve(data)
  x$set_inverse(m)
  m
}







