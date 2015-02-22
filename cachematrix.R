## Create a cacheble matrix type. Has the ability to cache the
## result and look it up in the future to improve performance.

## Create matrix type.

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  
  

