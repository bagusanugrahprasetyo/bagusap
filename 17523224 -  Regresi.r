
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

Data perkiraan ini saya dapatkan dari hasil pengamatan perkiraan mengendarai motor dengan renggang jarak setiap 10 km dan waktu yang diperlukan berkisar 30 menit tiap 10 km-nya.

Penjelasan

A.

perkiraan <- read.csv(file.choose(),header=TRUE)
//*untuk memanggil data tabel dari perkiraan

perkiraan
//*untuk menampilkan tabel model perkiraan (jarak dan waktu)

B. 

model <- lm(jarak ~ waktu, data = perkiraan)
summary(model)
//*untuk menampilkan data model perkiraan berupa jarak dan waktu dengan formula

Hasilnya berupa:

Call:
lm(formula = jarak ~ waktu, data = perkiraan)

Nah! Disini kita dapat melihat formula yang dimasukkan berupa jarak ~ waktu dari model perkiraan.
Nantinya akan menghasilkan berupa residual(sisa) berupa Min(Nilai minimum), 1Q(Quartil awal), Median(Nilai tengah), 3Q(Quartil terakhir).

Residuals:
       Min         1Q     Median         3Q        Max 
-2.049e-14 -7.620e-15  8.760e-16  4.008e-15  5.609e-14 

Untuk koefisien yang didapat berupa:

Coefficients:
              Estimate Std. Error    t value Pr(>|t|)    
(Intercept) -8.039e-15  3.580e-15 -2.245e+00   0.0294 *  
    (waktu)  2.000e+01  2.444e-16  8.184e+16   <2e-16 ***   
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

Untuk pendekatan dari titik erornya:

Residual standard error: 1.247e-14 on 48 degrees of freedom
Multiple R-squared:      1,	Adjusted R-squared:      1 
F-statistic: 6.697e+33 on 1 and 48 DF,  p-value: < 2.2e-16

C.

plot(jarak ~ waktu, data=perkiraan)
abline(model, col = "red", lwd = 1)

*//untuk menampilkan grafik dari model perkiraan 

poly_model <- lm(mpg ~ poly(hp, degree=2), data = mtcars)
poly_model

x <- with(mtcars, seq(min(hp), max(hp), length.out=2000))
y <- predict(poly_model, newdata = data.frame(hp = x))

plot(mpg ~ hp, data = mtcars)
lines(x, y, col="red")

*//untuk memanggil dan menampilkan polinomial data dari plot yang telah ada

Hasilnya berupa :

Call:
lm(formula = mpg ~ poly(hp, degree = 2), data = mtcars)

Untuk koefisien yang didapat berupa:

Coefficients:
          (Intercept)  poly(hp, degree = 2)1  poly(hp, degree = 2)2  
                20.09                 -26.05                  13.15  
