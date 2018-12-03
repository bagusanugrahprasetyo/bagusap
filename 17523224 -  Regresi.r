
perkiraan <- read.csv(file.choose(),header=TRUE)

perkiraan

model <- lm(jarak ~ waktu, data = perkiraan)
summary(model)

plot(jarak ~ waktu, data=perkiraan)
abline(model, col = "red", lwd = 1)

poly_model <- lm(mpg ~ poly(hp, degree=2), data = mtcars)
poly_model

x <- with(mtcars, seq(min(hp), max(hp), length.out=2000))
y <- predict(poly_model, newdata = data.frame(hp = x))

plot(mpg ~ hp, data = mtcars)
lines(x, y, col="red")
