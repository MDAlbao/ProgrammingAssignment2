## Put comments here that give the overall description of what your 
## functions do
+## Our aim in this experiment is to write a pair of functions, namely, 
## Write a short comment describing this function
+## "makeCacheMatrix" and "CacheSolve" that cache the inverse of a matrix

+## makeCacheMatrix is a function  which creates a special "matrix" object that can cache its inverse for the input which is invertible  square matrix

makeCacheMatrix <- function(x = matrix()) {
+ inv <-NULL
+ set <-function (y) {
+ x <<- y
+ inv <<-NULL
+ }
+ get <- function () x
+ setinv <- function (inverse) inv <<-inverse
+ getinv <- function () inv 
+ list(set = set, get = get, setinv = setinv, getinv = getinv
}


## Write a short comment describing this function
+## cacheSolve is a function which computes  the inverse of the special matrix
+## returned by the makeCacheMatrix above. If the inverse has already  been calculated
+## (and the matrix is not changed), then the cacheSolve should retrieve the 
+## inverse from the cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
+ inv <- x$getinv()
+ if (!is.null(inv)){
+ message (getting cache result)
+ return(inv)
+ }
+ data <- x$get()
+ inv <- solve(data, ...)
+ x$setting (inv)
+ inv
}
