## Because of the high computation needs of inverting matrices the following 
## functions cache the inverse of a matrix rather than computing it again and 
## again

## makeCacheMatrix creates a special "matrix" obejct that can cache its inverse
## The function generates a list of functions to
      # set the value of the matrix
      # get the value of the matrix
      # set the inversion of the matrix
      # get the inversion of the matrix

makeCacheMatrix <- function(x = matrix()) {
      m <- NULL
      set <- function(y) {
            x <<- y
            m <<- NULL
      }
      get <- function() x
      setinverse <- function(solve) m <<- solve
      getinverse <- function() m
      list(set = set, get = get,
           setinverse = setinverse,
           getinverse = getinverse)
}
 

# cacheSolve calculates the inversion of the matrix computed by makeCacheMatrix.
# However, it first checks if the inversion has already been computed and if it 
# has not changed. If true, the function gets the inversion from cache. If not,
# it calculates the inversion and sets the value for the inversion in the cache, 
# with the setinverse() function.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
      m <- x$getinverse()
      if(!is.null(m) && identical(m,a)) {
            message("getting cached data")
            return(m)
      }
      data <- x$get()
      m <- solve(data, ...)
      x$setinverse(m)
      m
}
      


