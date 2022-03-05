## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        
        # Set function
        
        set <- function(y){
                x <<- y
                m <<- NULL
        }
        
         # Get function
        
        get <- function(){
                x
                }
        
        # Set inverse function
        
        setsolve <- function(solve)
        {
                m <<-solve
         }
        
        # Get inverse function
        
        getsolve <- function() {
                m
               }
        
        # List with the functions
       
        list(set = set, get = get,
             setsolve = setsolve,
             getsolve = getsolve)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
         ## Return a matrix that is the inverse of 'x'
        m <- x$getsolve()
        if(!is.null(m)){
                message("getting cached data")
                return(m)
        }
        # Calculating the inverse
        data <- x$get()
        m <- solve(data, ... )
        # Set the inverse
        x$setsolve(m)
        m
        ## Return a matrix that is the inverse of 'x'
}
