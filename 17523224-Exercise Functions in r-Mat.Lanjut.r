
#1.1
f <- function (x) {
    result <- x^3+x^2-6
    return(result)
}
f(1)

#1.2
g <- function (a,b) {
    result <- a*b*(b-a)
    return(result)
}
g(1,2)

#1.3
h <- function (m,n) {
    result <- (sqrt(m)/n)+m-2*n
    return(result)
}
h(999,999)

#2.1
rand<-sample (1:25)
x<-matrix(c(rand),2,2,TRUE)
y<-matrix(c(rand),2,2,TRUE)

fx <- function (x,y){
    result<-(x+y)%*%x%*%y
    return(result)
}
fx(x,y)

#2.2
m <-matrix(c(1:4),2,2,T)
n <-matrix(c(5:8),2,2,T)
h <-function(m,n){
    result <- det(m)*n-m%*%n
    return(result)
}
h(m,n)

#2.3
g <- function (x){
    result <- solve(x)%*%x-2*x
    return(result)
}
x <- matrix(c(1:4),2,2,T)
g(x)
