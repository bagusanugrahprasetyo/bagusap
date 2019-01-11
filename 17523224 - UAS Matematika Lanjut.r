
tabel1<- read.csv(file.choose(),header=TRUE)

tabel1

model <- lm(x ~ y, data = tabel1)
summary(model)

plot(x ~ y, data=tabel1)
abline(model, col = "red", lwd = 1)

poly_model <- lm(mpg ~ poly(hp, degree=2), data = mtcars)
poly_model

x <- with(mtcars, seq(min(hp), max(hp), length.out=2000))
y <- predict(poly_model, newdata = data.frame(hp = x))

plot(mpg ~ hp, data = mtcars)
lines(x, y, col="red")

bi <- function (a,b) {
    re <- 3
    pn <- (a+b)/2
    while (re >= 0.0001) {
        print(paste(a,b,pn,fx(pn),fx(a),re,sep=""))
        p <- pn
        if (sign(g(p)) == sign(g(a))) {
            a <- p
        } else {
            b <- p
        }
        pn <- (a+b)/2
        re <- abs(pn-p)/abs(pn)
    }
}

h <- 0.1
x <- seq(0,1,by=h)
f <- function(x) {
    return(x^2)
}
f0 <- f(x[1])
fi <- sapply(x[2:10],f)
fn <- f(x[length(x)])
trap <- function(f0,fi,fn,h) {
   L <- h*(f0+2*sum(fi)+fn)/2 
    return(L)
}
trap(f0,fi,fn,h)

h <- 0.2
x <- seq(0,1,by=h)
f <- function(x) {
    return(x^2)
}
f0 <- f(x[2])
fi <- sapply(x[2:10],f)
fn <- f(x[length(x)])
trap <- function(f0,fi,fn,h) {
        L <- h*(f0+2*sum(fi)+fn)/2
    return(L)
}
trap(f0,fi,fn,h)

composite.trapezoid <- function(f, a, b, n) {
  if (is.function(f) == FALSE) {
    stop('f must be a function with one parameter (variable)')
  }
   
  h <- (b - a) / n
   
  j <- 1:n - 1
 
  xj <- a + j * h
 
  approx <- (h / 2) * (f(a) + 2 * sum(f(xj)) + f(b))
   
  return(approx)

composite.simpson <- function(f, a, b, n) {
  if (is.function(f) == FALSE) {
    stop('f must be a function with one parameter (variable)')
  }
   
  h <- (b - a) / n
   
  xj <- seq.int(a, b, length.out = n + 1)
  xj <- xj[-1]
  xj <- xj[-length(xj)]
 
  approx <- (h / 3) * (f(a) + 2 * sum(f(xj[seq.int(2, length(xj), 2)])) + 4 * sum(f(xj[seq.int(1, length(xj), 2)])) + f(b))
   
  return(approx)
   
}

f3 <- function(x) {
  return(exp(2 * x) * sin(3 * x))
}
