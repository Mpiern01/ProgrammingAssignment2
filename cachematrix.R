## Create a cacheble matrix type. Has the ability to cache the
## result and look it up in the future to improve performance.

## Create matrix type.

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


## Return inverse of cachedmatrix x. This looks up the cache if it is available. 

cacheSolve <- function(x, ...) {
  inv <- x$getCache()
  
  
  if(!is.null(inv)) {
    message("Getting cached matrix.")
    return(inv)
  }
  
  data <- x$get()
  
  inv <- solve(data, ...)
  
  x$setCache(inv)
  
  inv
}
