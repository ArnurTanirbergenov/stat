
mu <- 5
n <- 100
X <- rnorm(n, mean = mu, sd = 1)

theta_func <- function(x) exp(mean(x))

B <- 10000

theta_boot <- replicate(B, theta_func(sample(X, replace = TRUE)))

hist(theta_boot, main = "Histogram of Bootstrap Replications", xlab = "theta")

curve(dexp(x, rate = 1), from = 0, to = 50, add = TRUE, col = "blue")
