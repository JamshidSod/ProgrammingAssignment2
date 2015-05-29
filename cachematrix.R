## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## makeCacheMatrix() can cache the inverse of a matrix which is the input
## it contains 4 functions: set (set the value of the matrix), 
## get (get the value of the matrix), 
## setinverse (set the value of the inverse of the matrix), 
## getinverse (get the value of the inverse of the matrix)
## the <<- operator is used to assign a value to an object in 
## environment that is different from the current environment

makeCacheMatrix <- function(x = matrix()) {
inverse <- NULL
    set <- function(x) {
        mtx <<- x;
        inverse <<- NULL;
    }
    get <- function() return(mtx);
    setinv <- function(inv) inverse <<- inv;
    getinv <- function() return(inverse);
    return(list(set = set, get = get, setinv = setinv, getinv = getinv))

}


## Write a short comment describing this function
## this function calculates the inverse of a matrix returned by 
## makeCacheMatrix() unless inverse has been calculated before
## in which cases the stored value is returned

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inverse <- mtx$getinv()
    if(!is.null(inverse)) {
        message("Getting cached data...")
        return(inverse)
    }
    data <- mtx$get()
    invserse <- solve(data, ...)
    mtx$setinv(inverse)
    return(inverse)
}
