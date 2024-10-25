#1
#a
x <- 1:10
y <- 11:20
A1 <- cbind(x,y)
A_T <- t(A1)
wynik <- A_T %*% y

#b
A = matrix(c(3,1,1,1,4,1,1,1,5), nrow=3, byrow = TRUE)
b <- c(1,2,3)
det_A <- det(A)
x <- solve(A,b)

#c
c <- c(6,7,8)
B <- cbind(A,c)
d <- c(9, 10, 11, 12)
G <- rbind(B,d)

#d
dimnames(G) = list(c("Anna","Barbara","Cecylia","Daria"), c("Fiołek","Gozdzik","Tulipan","Róża"))
dim(G)
G

#e
H = matrix(c(1:9), nrow=3, byrow=TRUE,dimnames=list(c("a","b","c"),c("d","e","f")))

#f
Z1 <- array(x, dim=c(3,3,2))
x2 <- c(1:18)
dim(x2) <- c(3, 3, 2)

#2
#a
wektor_stringow <- c("Ala", "ma", "kota")
macierz_liczbowa <- matrix(1:9, nrow = 3)
macierz_logiczna <- matrix(c(TRUE, FALSE, TRUE, FALSE, TRUE, FALSE), nrow = 3)
list1 <- list(strings = wektor_stringow, liczby = macierz_liczbowa, logika = macierz_logiczna)
class(list1)
sqrt_macierz_liczbowa <- sqrt(list1$liczby)

#b
palenie <- c(TRUE, FALSE, TRUE, TRUE, FALSE, FALSE, TRUE, TRUE, FALSE, FALSE)
plec <- c("K", "M", "K", "K", "M", "M", "K", "M", "K", "M")
wiek <- sample(1:100, 10)
badanie <- data.frame(czy_pali = palenie, plec = plec, wiek = wiek)
sapply(badanie, is.numeric)
table(badanie$plec)

#3
#a
write.table(badanie, "badanie.txt")
Nowe_badanie <- read.csv("badanie.txt")

#b
write.csv(beaver1, "beaver1.cvs")

#4
#a
iloczyn_skalarny <- 0
for (i in 1:nrow(beaver1)) {
  iloczyn_skalarny <- iloczyn_skalarny + (beaver1$temp[i] * beaver1$activ[i])
}
iloczyn_skalarny

#b
count_zeros <- function(vec) {
  sum(vec == 0) 
}

#c
fnl <- function(v) {
  first <- NA
  last <- NA
  
  for (i in seq_along(v)){
    if (v[i]){
      last <- i
      if (is.na(first)){
        first <- i
      }
    }
    return (c(first,last))
  }
}

#d
moda <- function(x) {
  x <- as.vector(x)
  czestosci <- table(x)
  moda <- as.numeric(names(czestosci)[which.max(czestosci)])
  return(moda)
}
moda(array(c(3,1,1,1,4,1,1,1,5), dim = c(3, 3, 3)))