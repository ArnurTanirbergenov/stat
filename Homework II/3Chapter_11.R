y <- sample(c(-1, 1), size = 10000, replace=TRUE)
x <- cumsum(y)
n <- seq(1, 10000)
plot(n, x, main="The Function",type="l", col="red")

#we can observe that, as we have VAR(x) equals n from 11(a), we may observe that all values are in general between -sqrt(n) ans +sqrt(n) (std dev)