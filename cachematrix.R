## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv<- NULL #Initializing the inverse matrix as NULL 
  set<-function(y) {# set function to set the matrix
    x<<-y # To modify the varible at parent levels
  inv<<-NULL

}
get<-function() {x} # To get the matrix x
setInverse<- function(inverse){inv<<-inverse} #Set the values inverse
getInverse<-function() {inv} # To get the invert of the matrix
list(set=set,get=get,setInverse=setInverse,getInverse=getInverse)
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv<-x$getInverse()
  if(!is.null(inv)) { # Checking whether the inverse is NULL
    message ("Getting cached data")
    return(inv) # Return the inverse value
    
  }
   mat<-x$get() # Calculate the inverse value
   inv<-solve(mat,...)
   x$setInverse(inv)
   inv  # Return the matrix that is inverse of 'x' 
}
