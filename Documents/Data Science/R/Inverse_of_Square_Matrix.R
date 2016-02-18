makeCacheMatrix <- function (x=matrix()){
        i <- NULL
        set <- function(y) {
                x <<- y
                i <<- NULL
        }
        get <- function() x
        
        setinverse <- function(inverse) i <<- inverse
        getinverse <- function() i
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## Usage
# > x<-matrix(c(1,1,1,3,4,3,3,3,4),3,3)
# > y<-makeCacheMatrix(x)
# > y$get()
# [,1] [,2] [,3]
# [1,]    1    3    3
# [2,]    1    4    3
# [3,]    1    3    4
# > y$getinverse()
# NULL
# y$setinverse(matrix(c(7,-1,-1,-3,1,0,-3,0,1),3,3))
# y$getinverse()
# [,1] [,2] [,3]
# [1,]    7   -3   -3
# [2,]   -1    1    0
# [3,]   -1    0    1
