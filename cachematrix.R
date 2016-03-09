## set and get the value of the matix
## set and get the value of the inverse of the matrix

## create a matrix and get the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y){
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setsolve <- function(solve) m <<- solve
        getsolve <- function() m
        list(set = set, get = get,
             setsolve = setsolve,
             getsolve = getsolve)
        
}


## cach the inverse of a matrix

cacheSolve <- function(x, ...) {
       m <- x$getsolve()
       if(!is.null(m)){
               message("getting cached data")
               return(m)
       }
       data <- x$get()
       m <- solve(data,...)
       x$setsolve(m)
       m
}
