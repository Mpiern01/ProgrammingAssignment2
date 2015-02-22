## Create a cacheble matrix type. Has the ability to cache the
## result and look it up in the future to improve performance.

## Create the first matrix type.

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
 
  get <- function() x
  
  setCache <- function(matinv) inv <<- matinv
  
  getCache <- function() inv
  
  list(set = set, get = get, setCache = setCache, getCache = getCache)
}

  

