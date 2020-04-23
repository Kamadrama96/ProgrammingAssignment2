## These functions are solutions for week 3 assignment of Coursera Data Science: R programming

## Function 1: to create a special "matrix"object that can cache its inverse

## Function storing a matrix and it's inverse and providing getters and setters.

makeCacheMatrix <- function(x = matrix()) {
    m<-NULL
    set<- function(y){
      x<<-y
      m<<-NULL
    }
    get<-function(){
      return(x)
    }
    setinverse<-function(inverse) {
      m<<-inverse
  }
    getinverse<- function() {
      return(m)
    }
    list(set=set, get=get, setinverse = setinverse, getinverse= getinverse)
 }   
## Function returning the inverse of a matrix. The function will return the cached inverse if it has been calculated before.

cacheSolve <- function(x, ...) {
  m<- x$getinverse()
  if(!is.null(m)){                       ## if inv is not NULL, the cache inverse can be returned
  message("Retrieving the cached data")  ## if inv is NULL, then cacheSolve gets the matrix 
  return(m)
}else{
    matrix<- x$get()
    ## Return a matrix that is the inverse of 'x'
    m<-solve(matrix,...)
    x$setinverse(m)
    return(m)                              ## print the inverse
  }
 }
