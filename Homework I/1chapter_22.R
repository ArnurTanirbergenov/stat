x <- seq(0,1000, by = 1)

y <- dbinom(x,1000,0.3)

a <- 1000 * 0.3

plot(x,y,  main = "Binomial Distribution with n = 1000 and p = 0.3", col = "orange")
abline (v = a, col = "red")