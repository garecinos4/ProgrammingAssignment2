## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##the function contains GET and SET to access
##the matrix also contains the GET and SET to
##getting the inverse matrix and return a list 
##with this for functions get set setsolve and getsolve
makeCacheMatrix <- function(x = matrix()) {
        s <- NULL
        set <- function(y) {
                x <<- y
                s <<- NULL
        }
        get <- function() x
        setsolve <- function(solve) s <<- solve
        getsolve <- function() s
        list(set = set, get = get,
             setsolve = setsolve,
             getsolve = getsolve)
}


## Write a short comment describing this function
##This function save in memory the matrix data and
## validate if the x$getsolve() is null or not
##the value s save the result of the inverse matrix 
##if s is not null return the matrix in memory
## if value of s  is null make the inverse matrix
##and set the result into the function makeCacheMatrix
##with x$setsolve and return the inverse matrix
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        s <- x$getsolve()
        if(!is.null(s)) {
                message("getting cached data")
                return(s)
        }
        data <- x$get()
        s <- solve(data, ...)
        x$setsolve(s)
        s
}
