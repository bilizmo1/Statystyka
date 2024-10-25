#1  Zrób wykres pudełkowy dla acme$market i acme$acme
library(boot)
boxplot(acme$market, acme$acme, 
        names = c("Market", "Acme"), 
        main = "Pudełkowy dla Market i Acme", 
        horizontal = TRUE, 
        col = c("red", "green"))

#2 Zrób wykres wiolinowy dla acme$market i acme$acme
library(vioplot)
vioplot(acme$market, acme$acme, 
        names = c("Market", "Acme"), 
        main = "Wykres wiolinowy dla Market i Acme", 
        col = c("red", "green"))

#3Zrób wykres mozaikowy (punktowy) przy pomocy funkcji plot
#oraz funkcji scatterplot dla acme$market i acme$acme
library(boot)
plot(acme$market, acme$acme, 
     main = "Wykres mozaikowy Market i Acme", 
     xlab = "Market", 
     ylab = "Acme", 
     pch = 19, 
     col = c("red","green"))
library(car)
sp(acme$market ~ acme$acme, 
   main = "Wykres punktowy", 
   xlab = "Market", 
   ylab = "Acme", 
   pch = 19, 
   col = "red")


#4Zrób we wspólnym układzie współrzędnych wykresy gęstości rozkładów:
#normalnego N(0,3), F(3,6) oraz chi-kwadrat dla n = 3 w przedziale [0,10].

#N(0, 3)
x_norm <- seq(-10, 10, length = 100) 
y_norm <- dnorm(x_norm, mean = 0, sd = sqrt(3))
plot(x_norm, y_norm, type = "l", main = "Rozkład Normalny N(0, 3)", 
     xlab = "x", ylab = "Gęstość")

#F(3, 6)
x_f <- seq(0, 5, length = 100) 
y_f <- df(x_f, df1 = 3, df2 = 6)  
plot(x_f, y_f, type = "l", main = "Rozkład F(3, 6)", 
     xlab = "x", ylab = "Gęstość")

#Chi-Kwadrat dla n = 3
x_chi <- seq(0, 10, length = 100)  
y_chi <- dchisq(x_chi, df = 3)  
plot(x_chi, y_chi, type = "l", main = "Rozkład Chi-Kwadrat (n=3)", 
     xlab = "x", ylab = "Gęstość")