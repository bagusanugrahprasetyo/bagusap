
#Making a variable constant in a function in r
#17523224
index<-3
f<-function(x){x+index}
f(4)

index<-20
f(4)

#constant functions
#17523224

f <- function (x) {
    fx <- 4
    return(fx)
}
input <- 0:5
plot (input,
     sapply(input,f),
     type="l", xlab="x",
     ylab="f(x)")

#linear functions
#17523224

f <- function (x) {
    fx <- 2*x+4
    return(fx)
}
input <- -1:5
plot(input,
    sapply(input,f),
    type="l",
    xlab="x",
    ylab="f(x)")

#quadratic functions
#17523224

f <- function (x) {
   fx <- 1*x^2-2*x-3
    return(fx)
}
input <- -10:10
plot(input, sapply(input,f),
    type="l",
    xlab="x",
    ylab="f(x)")

#polynomial functions
#17523224

f <- function(x){
    fx <- x^4-4*x^2-5
    return(fx)
}
input <- seq (-5, 6, 0.5)
plot(input,
    sapply(input,f),
    type="l",
    xlab="x",
    ylab="(fx)")

#rational functions
#17523224

f <- function(x) {
    fx <- 1/x^2
    return(fx)
}
input <- seq(1,5,0.5)
plot(input,
    sapply(input,f),
    type="l",
    xlab="x",
    ylab="f(x)")

#Exercise.01-Functions
#17523224

f <- function(x) {
    fx <- sin(x)
    return(fx)
}
input <- seq(1,10,0.1)
plot(input,
    sapply(input,f),
    type="l",
    xlab="x",
    ylab="f(x)")

#Exercise.02-Functions
#17523224

f <- function(x) {
    fx <- log(x)
    return(fx)
}
input <- seq(1,10,0.1)
plot(input,
    sapply(input,f),
    type="l",
    xlab="x",
    ylab="f(x)")

#Exercise.03-Functions
#17523224

f <- function(x) {
    fx <- sqrt(x)-2
    return(fx)
}
input <- seq(1,10,0.1)
plot(input,
    sapply(input,f),
    type="l",
    xlab="x",
    ylab="f(x)")

#Exercise.04-Functions
#17523224

f <- function(x) {
    fx <- sqrt(x-2)
    return(fx)
}
input <- seq(1,10,0.1)
plot(input,
    sapply(input,f),
    type="l",
    xlab="x",
    ylab="f(x)")
