## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
##Generate m by assigning a NULL
  m<-NULL
  ## set will be the starting function
  set<-function(y){
  ## Assign to x the factor y
  x<<-y
  m<<-NULL
}
get<-function() x
setmatrix<-function(solve) m<<- solve
getmatrix<-function() m
list(set=set, get=get,
   setmatrix=setmatrix,
   getmatrix=getmatrix)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		    m<-x$getmatrix()
	## Identify if there were previous calculations
    if(!is.null(m)){
      message("getting cached data")
      return(m)
    }
	## an predefined "Else"
    matrix<-x$get()
    m<-solve(matrix, ...)
    x$setmatrix(m)
  
}
