## "makeCacheMatrix" creates a list of functions
## that do the following:
## 1. Set the matrix
## 2. Get the matrix
## 3. Set the inverse of the matrix
## 4. Get the inverse of the matrix
makeCacheMatrix <- function(x = matrix()) {
    
    m <- matrix(NA, nrow=dim(x)[1], ncol=dim(x)[2])
    set <- function(y) {
        x <<- y
        m <<- matrix(NA, nrow=dim(x)[1], ncol=dim(x)[2])
    }
    get <- function() x
    setinverse <- function(inv) m <<- inv
    getinverse <- function() m
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
    
}