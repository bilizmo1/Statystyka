#Dane
x <- c(1, 5, 2, 5, 5, 1, 5, 4, 3, 2) 

# Tabela częstości dla wektora x
freq_x <- table(x)

# Wyświetlenie tabeli częstości
print(freq_x)

# Wykres słupkowy
barplot(freq_x, 
        main="Rozkład empiryczny - Wykres słupkowy", 
        xlab="Wartości", 
        ylab="Częstość", 
        col="lightblue")


lx <- sample(0:1000/1000, 100, replace = TRUE)
head(lx, n = 30)
print(lx)



# Losowanie wartości
set.seed(123) # Ustalenie ziarna losowości dla powtarzalności
lx <- sample(0:1000/1000, 100, replace = TRUE)

# Podział na przedziały i zliczenie wartości w przedziałach
result <- lx |> 
  cut(breaks = c(0, 0.1, 0.4, 0.6, 0.7, 1)) |> table()

# Wyświetlenie wyniku
print(result)
hist(lx)
density(lx) |> plot()


oceny <- c('ng','ndp','popr','db','bdb','wz')
klasa <- sample(oceny,10, replace = TRUE)
kf <- factor(klasa, levels = oceny, ordered = TRUE)
kf_freq <- table(kf)























