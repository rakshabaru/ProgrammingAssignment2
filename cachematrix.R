## A pair of function that cache the inverse of matrix


## Creating a special matrix object that caches its inverse

makeCacheMatrix <- function(m = matrix()) {
  
  ##intilaise the inverse property
  
       i<-NULL
      ##Method to set the matrix
      set<-function(matrix){
      m<<-matrix
      i<<-NULL
}
    
    ##Method to get the matrix
      get<-function(){
        ## Return the function
        m
      }
##Method to set the inverse of matrix
  setInverse<-function(inverse){
    i<<-inverse
  }
##Method to get the inverse ofmatrix

    getInverse<-function(){
      
      ##return the inverse
      i
    }

##Return the list of methods
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Calculate the Inverse of special matrix returned by "makeCacheMatrix"above
## If teh inverse has already been calculated(and the matrix has not changed),
## then the "cachesolve" should retrieve the inverse from cache. 
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
          m<- x$getInverse()
          ##Just return the inverse if its already set
          if(!is.null(m)){
            message("Getting Cache Data")
            return(m)
}

      ##get the matrix from our special object
        data<-x$get()
      ##Calculate the inverse using matrix calculation
        m <-solve(data)%% data
      ##ste teh inverse to the object 
        x$setInverse(m)
      ##return matrix
        m

      
}


