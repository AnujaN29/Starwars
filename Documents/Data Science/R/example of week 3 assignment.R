makeVector <- function(x = numeric()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setmean <- function(mean) m <<- mean
        getmean <- function() m
        list(set = set, get = get,
             setmean = setmean,
             getmean = getmean)
}
cachemean <- function(x, ...) {
        m <- x$getmean()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- mean(data, ...)
        x$setmean(m)
        m
}




## Usage
x <- 1:10
xx <- makeVector(x)
xx$get()
# [1]  1  2  3  4  5  6  7  8  9 10
xx$getmean()
#NULL
xx$setmean(mean(x))
xx$getmean()
#[1] 5.5
xx$setmean("Hi, I am a mean")
xx$getmean()
#[1] "Hi, I am a mean"


-----------
        
        > a <- makeVector(c(1,2,3,4))
> a$get()
[1] 1 2 3 4
> a$getmean()
NULL
> cachemean(a)
[1] 2.5
> a$getmean()  # this is only to show you that the mean has been stored and does not affect anything
[1] 2.5
> cachemean(a)
getting cached data
[1] 2.5