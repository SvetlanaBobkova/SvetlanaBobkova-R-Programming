## functions that cache the universe of a matrix

## creates a special 'matrix' object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
z<- NULL
set<- function(y){
x<<- y
z<<- NULL}
get<- function() x
setinverse<- function(inverse) z<<- solve
getinverse<- function() z
list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)

}


## calculates the inverse of 'matrix' returned by makeCacheMatrix.
## If the inverse has already been calculated and the matrix has not been changed,
## then cacheSolve returnes the inverse from the cache

cacheSolve <- function(x, ...) {
z<- x$getinverse()
if(!is.null(z)){
message("getting cached data")
return(z)}
input<- x$get()
z<- solve(input, ...)
X$setinverse
z
}
