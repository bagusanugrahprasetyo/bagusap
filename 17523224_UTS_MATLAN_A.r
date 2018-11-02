
install.packages("matlib", repos='http://cran.us.r-project.org')
library(matlib)

#17523224
#No.1a

A <- matrix (c(1, 5, 9,
                2, 6, 10,
                3, 7, 11,
              4, 8, 12), 4, 3,byrow=TRUE)
B <- matrix (c(1, 4, 7, 10, 13, 
                2, 5, 8, 11, 14,
              3, 6, 9, 12, 15), 3, 5,byrow=TRUE)
A%*%(B)

#17523224
#No.1b

A <- matrix (c(1, 5, 9,
                2, 6, 10,
                3, 7, 11,
              4, 8, 12), 4, 3,byrow=TRUE)
B <- matrix (c(1, 4, 7, 10, 13, 
                2, 5, 8, 11, 14,
              3, 6, 9, 12, 15), 3, 5,byrow=TRUE)
t(B)%*%t(A)

#17523224
#No.1c

A <- matrix (c(1, 5, 9,
                2, 6, 10,
                3, 7, 11,
              4, 8, 12), 4, 3,byrow=TRUE)
if (A <- 1:12){
    print ( A <- matrix (c(1, 5,
                3, 7), 2, 2,byrow=TRUE))
} else {
    print ( A <- matrix (c(2, 6,
                          4, 8), 2, 2,byrow=TRUE))
}

#17523224
#No.1d

C <- matrix (c(1, 5,
              3, 7), 2, 2,byrow=TRUE)
det(C)

#17523224
#No.1e

C <- matrix (c(1, 5,
              3, 7), 2, 2,byrow=TRUE)
inv(C)

#17523224
#No.2
A <- matrix(c(1,2,3,4,-5,
              2,1,2,3,4,
             3,2,1,2,3,
             4,3,2,1,2,
             5,4,3,2,1),byrow=T,nrow=5,ncol=5)
b <- matrix(c(7,-1,-3,5,17),nrow=5,ncol=1)
p <- nrow(A)

(U.pls <- cbind(A,b))
U.pls[1,] <- U.pls[1,]/U.pls[1,1]
i <- 2
while (i < p+1) {
 j <- i
 while (j < p+1) {
  U.pls[j, ] <- U.pls[j, ] - U.pls[i-1, ] * U.pls[j, i-1]
  j <- j+1
 }
 while (U.pls[i,i] == 0) {
  U.pls <- rbind(U.pls[-i,],U.pls[i,])
 }
 U.pls[i,] <- U.pls[i,]/U.pls[i,i]
 i <- i+1
}
for (i in p:2){
 for (j in i:2-1) {
  U.pls[j, ] <- U.pls[j, ] - U.pls[i, ] * U.pls[j, i]
 }
}
U.pls

#17523224
#No.3a

D <- 1:10
E <- 1:9
union(D,E)

#17523224
#No.3b

D <- 1:10
E <- 1:9
union((intersect(D,E)),(E))

#17523224
#No.3C

D <- 1:10
E <- 1:9
setdiff(D,E)

#17523224
#No.3d

D <- 1:10
E <- 1:9
intersect((union(D,E)),(intersect(D,E)))

#17523224
#No.4a
f <- function (x) {
    result <- x^2+4*x+5
    return(result)
}
f(1)

#17523224
#No.4a
g <- function (x) {
    result <- x-1
    return(result)
}
g(1)

#17523224
#No.4b

#quadratic functions
#17523224

f <- function (x) {
   fx <- x^2+4*x+5
    return(fx)
}
input <- -20:20
plot(input, sapply(input,f),
    type="l",
    xlab="x",
    ylab="f(x)")

#17523224
#No.4c
f <- function (x) {
    result <- x^2+4*x+5
    return(result)
}
g <- function (x) {
    result <- x-1
    return(result)
}
fog <- function (x) {
    result <- x^2+2*x+2
    return(result)
}

fog (2)

install.packages("Ryacas", repos = 'http://cran.us.r-project.org')

#17523224
#No.5a

f <- function(x) {
    fx <- 5*x+1/sqrt(x)+1
    return (fx)
}

library(Ryacas)
x <- Sym("x")
Simplify(deriv(x^2,x))

#17523224
#No.5b

f <- function(x) {
    fx <- 5*x^-2-x+1/4*x^-1
    return (fx)
}

library(Ryacas)
x <- Sym("x")
Simplify(deriv(x^2,x))

#17523224
#No.5c

f <- function(x) {
    fx <- 1/x+1
    return (fx)
}

library(Ryacas)
x <- Sym("x")
Simplify(deriv(x^2,x))

#17523224
#No.6a

f <- function(x) {
    fx <- 'x'+x^3-'x^3'/x
    return (fx)
}

library(Ryacas)
'x' <- Sym("x")
x <- Sym("h")
Limit(f(x),x,0)

#17523224
#No.6b

f <- function(x) {
    fx <- sqrt(x^2)-x
    return (fx)
}

library(Ryacas)
x <- Sym("x")

Limit(f(x),x,0)

#17523224
#No.7

integrand <- function(x) {
    return (sin(2*x)*(x^2/5*x^2+2))
}

integrate(g = integrand, lower = (phi/2), upper = (2*phi)

library(Ryacas)
x <-Sym("x")

Integrate(sin(2*x)*(x^2/5*x^2+2,x)
