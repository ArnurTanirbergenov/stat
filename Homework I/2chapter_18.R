x <- seq(-100, 100, by = .1)
y <- dnorm (x, 3, 16)

plot(x,y, main = "Normal distribution with mean: 3 and std: 4", col = "orange", type = "l")
abline (v = 3, col = "red")

#Find P(X < 7)

pnorm(7, mean = 3, sd = 4, lower.tail = TRUE) 

#Find P(X > -2)

pnorm(-2, mean = 3, sd = 4, lower.tail = FALSE)

#Find x such that P(X > x) = 0.05

qnorm(p = 0.05, mean = 3, sd = 4, lower.tail = FALSE)

#Find P(0 ≤ X < 4)

pnorm(q = 4, mean = 3, sd = 4, lower.tail = TRUE) - pnorm(q = 0, mean = 3, sd = 4, lower.tail = TRUE)

#Find x such that P(|X| > |x|) = .05. 

#In this case our normal distribution is kinda symmetric, so we can say that our point can be in 95% of our
#density. If we take left or right sides, the percentage will be 0.975 
#  0.025 | 0.950 | 0.025    ->   0.975

qnorm(p = 0.975, mean = 3, sd = 4, lower.tail = TRUE)