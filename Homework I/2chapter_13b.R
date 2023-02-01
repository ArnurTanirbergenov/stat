x <- seq(0, 30, by = 0.1)
y <- dnorm(x, mean = 0, sd = 1.0)

par(mfrow=c(2,2))
plot(x,y, main = "Comparison", col = "orange")
hist(rexp(x, .1), breaks=10, main="Comparison" )


