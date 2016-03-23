## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
 m <- NULL
      set <- function(y) {
            x <<- y
            m <<- NULL
      }
      get <- function() x
      setinversa <- function(solve) m <<- solve
      getinversa <- function() m
      list(set = set, get = get, setinversa = setinversa, getinversa = getinversa)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        matr <- x$getinversa()
		if(!is.null(matr)) {
		    message("from cache data")
		    return(matr)
		}
		data <- x$get()
		matr <- solve(data)
		x$setinversa(matr)
  matr
}
