## Two functions working together to cache the inverse of a invertible square matrix. 


## This function creates a new matrix that can cache given value 

makeCacheMatrix <- function(x = matrix()) {
mat <- NULL
  set <- function(y) {
    x <<- y
    mat <<- NULL
  }
  get <- function() x
  setmat <- function(matrix) mat <<- matrix
  getmat <- function() mat
  list(set = set, get = get,
       setmat = setmat,
       getmat = getmat)
}


## This function checks whether the value is already cached and decides whether to return cached data or calculate the data and return new data

cacheSolve <- function(x, ...) {
        mat <- x$getmat()
  if(!is.null(mat)) {
    message("getting cached data")
    return(mat)
  }
  data <- x$get()
  mat <- solve(data, ...)
  x$setmat(mat)
  mat
}
