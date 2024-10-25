Szybciej 
#1 Dla danych acme z pakietu boot sporządź szereg rozdzielczy dla kolumny
#acme$market według reguł 1 – 4.
library(boot)
N <- length(acme$market)
n <- sqrt(N)
table(cut(acme$market,n))/N

#2 Dla danych acme z pakietu boot sporządź szereg rozdzielczy ilości danych w
#każdym roku.
#Oblicz średnią danych z kolumny acme$market dla każdego elementu szeregu
#rozdzielczego.
library(boot)
acme$year <- as.numeric(sub(".*?/(\\d{2})$", "\\1", acme$month)) + 1900
rozdzielczy <- table(acme$year)
rozdzielczy
srednie <- tapply(acme$market, acme$year, mean)
print(srednie)

#3  Napisz funkcję dzielącą dane numeryczne na przedziały o zadanej proporcji
#zawartości ilości danych (np. 10%, 20%, 30%, 20%,10%,10%).
podziel_dane <- function(dane, proporcje){
  przedzialy <- quantile(dane, probs = cumsum(proporcje) / 100)
  cut(dane, breaks = c(-Inf,przedzialy),include.lowest=TRUE)
}
table(podziel_dane(c(1,2,3,4,5,6,7,8,9,10),c(10,20,30,20,10,10)))

#4 Dla danych catsM oblicz dostępne wskaźniki pozycyjne i miary zmienności dla
#kolumn catsM$Bwt, catsM$Hwt i ich różnicy.
library(MASS)

summary(cats$Bwt)
sd(cats$Bwt)
var(cats$Bwt)

summary(cats$Hwt)
var(cats$Hwt)
sd(cats$Hwt)

roznica <- cats$Bwt - cats$Hwt
summary(roznica)
var(roznica)
sd(roznica)