## "cacheSolve" calculates the inverse of the matrix from the
## "makeCacheMatrix" function. It first checks to see if the
##inverse has already been calculated. If so, it gets the matrix
##inverse from the cache and skips the computation. Otherwise, it
##calculates the inverse and sets the inverse in the cache.
cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    m <- x$getinverse()
    if(max(is.na(m))==0) {
        message("getting cached data")
        return(m)
    }
    data <- x$get()
    m <- solve(data, ...)
    x$setinverse(m)
    m
}