install.packages("Ryacas", repos = 'http://cran.us.r-project.org')

#17523224
#LimitExercise No.1

f <- function(x) {
    fx <- (1-cos(x)) / (x)
    return (fx)
}

library(Ryacas)
x <- Sym("theta")

Limit(f(x),x,0)

#17523224
#limitExercise No.2

f <- function(x) {
    fx <- (2*(-3+x)^2-18) / (x)
    return (fx)
}

library(Ryacas)
x <- Sym("h")

Limit(f(x),x,0)

#17523224
#LimitExercise No.3

f <- function(x) {
    fx <- (x - sqrt(3*x + 4)) / (4 - x)
    return (fx)
}

library(Ryacas)
x <- Sym("t")

Limit(f(x),x,4)

#17523224
#Differentiation No.1

y <- function(x){
  return(sqrt(x)*(x+1))
}

library(Ryacas)
x <-Sym("x")

Simplify(deriv(x^2,x))

#17523224
#Differentiation No.2

y <- function(x){
  return(2*x^2-3)/(sqrt(x))
}

library(Ryacas)
x <-Sym("x")

Simplify(deriv(2*x^2,x))

#17523224
#Differentiation No.3

y <- function(x){
  return(x-1)/(x+1)
}

library(Ryacas)
x <-Sym("x")

Simplify(deriv(3*x^2,x))

#17523224
#Differentiation No.4

y <- function(x){
  return(x^2+2*x+1)/(x+1)
}

library(Ryacas)
x <-Sym("x")

Simplify(deriv(4*x^2,x))

#17523224
#Integration No.1

integrand <- function(x) {
    return (2*x^3)
}

integrate(f = integrand, lower = 0, upper = 3)

library(Ryacas)
x <-Sym("x")

Integrate(x^2,x)

#17523224
#Integration No.2

integrand <- function(x) {
    return (1-5*x^4)
}

integrate(f = integrand, lower = -1, upper = 2)

library(Ryacas)
x <-Sym("x")

Integrate(2*x^2,x)

#17523224
#Integration No.3

integrand <- function(x) {
    return (x^4-3*x^2+5)
}

integrate(f = integrand, lower = -2, upper = 2)

library(Ryacas)
x <-Sym("x")

Integrate(3*x^2,x)

#17523224
#Integration No.4

integrand <- function(x) {
    return (x^2+1/2*sqrt(x))
}

integrate(f = integrand, lower = 1, upper = 4)

library(Ryacas)
x <-Sym("x")

Integrate(4*x^2,x)

#17523224
#Integration No.5

integrand <- function(x) {
    return (x*(2-3*x)^2)
}

integrate(f = integrand, lower = 0, upper = 2)

library(Ryacas)
x <-Sym("x")

Integrate(5*x^2,x)