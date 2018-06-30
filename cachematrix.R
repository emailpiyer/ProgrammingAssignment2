## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}

#makeCacheMatrix: This function creates a special “matrix” object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) 
{
		inverse <- NULL
		set <- function(y)
		{
			x <<- y
			inverse <<- NULL
	    }
			get <- function() x
			setInverse <- function(solveMatrix) inverse <<- solveMatrix
			getInverse <- function() inverse
			list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}

#cacheSolve: This function computes the inverse of the special “matrix” returned by makeCacheMatrix above. If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache. Computing the inverse of a square matrix can be done with the solve function in R. For example, if X is a square invertible matrix, then solve(X) returns its inverse.

cacheSolve <- function(x,...) 
{
		inverse <- x$getInverse()
		if(!is.null(inverse))
		{
		message("get cached result")
		return(inverse)
		}
		result <- x$get()
		inverse <- solve(result)
		x$setInverse(inverse)
		inverse      
}
