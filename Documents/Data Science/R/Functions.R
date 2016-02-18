add2 <- function (x,y)
{ x+y}



columnmean <-function (x)
{
  nc<-ncol(x)
  means<-numeric(nc)
  
  for (i in 1:nc)
  {
    means[i]=means[x(,i),na.rm=removeNA]
  }
  means
}
