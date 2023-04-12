n <- 20
lambda0 <- 1
alpha <- 0.05

vec <- vector()

for (i in 1:10000){
    x <- rpois(n, lambda0)
    w <- (mean(x) - lambda0) / sqrt(mean(x) / n)
    if (w > 1.96) {
        vec[i] <- 1
    }else {
        vec[i] <- 0
    }
}

null_reject_sum <- sum(vec)
error_type_1 <- null_reject_sum / 10000
print(error_type_1)




set.seed(123)

mu <- 5
n <- 100
x <- rnorm(n, mean = mu, sd = 1)

theta_hat <- exp(mean(x))


nonparametric_bootstrap <- function(x, theta_hat, B) {
  theta_star <- rep(NA, B)
  for (i in 1:B) {
    x_star <- sample(x, replace = TRUE)
    theta_star[i] <- exp(mean(x_star))
  }
  se <- sd(theta_star)
  ci <- c(theta_hat - qnorm(0.975)*se, theta_hat + qnorm(0.975)*se)
  list(se = se, ci = ci)
}

nonparam_boot <- nonparametric_bootstrap(x, theta_hat, B = 1000)
nonparam_boot$se
nonparam_boot$ci


#B)


set.seed(123)

mu <- 5
n <- 100
x <- rnorm(n, mean = mu, sd = 1)

theta_hat <- exp(mean(x))

parametric_bootstrap <- function(x, theta_hat, B) {
  theta_star <- rep(NA, B)
  for (i in 1:B) {
    x_star <- rnorm(n, mean = mean(x), sd = 1)
    theta_star[i] <- exp(mean(x_star))
  }
  theta_star
}

param_boot_dist <- parametric_bootstrap(x, theta_hat, B = 1000)

nonparametric_bootstrap <- function(x, theta_hat, B) {
  theta_star <- rep(NA, B)
  for (i in 1:B) {
    x_star <- sample(x, replace = TRUE)
    theta_star[i] <- exp(mean(x_star))
  }
  theta_star
}

nonparam_boot_dist <- nonparametric_bootstrap(x, theta_hat, B = 1000)

par(mfrow=c(1,3))
hist(param_boot_dist, main = "Parametric Bootstrap", xlab = "theta")
hist(nonparam_boot_dist, main = "Nonparametric Bootstrap", xlab = "theta")

