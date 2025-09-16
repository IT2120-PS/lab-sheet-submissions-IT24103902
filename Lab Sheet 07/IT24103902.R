setwd("C:\\Users\\User\\Desktop\\IT24103902")

# Exercise 1:
prob_train <- punif(25, min = 0, max = 40, lower.tail = TRUE) - punif(10, min = 0, max = 40, lower.tail = TRUE)
print(paste("Exercise 1 - Probability train arrives between 8:10 and 8:25:", round(prob_train, 4)))

# Exercise 2:
prob_update <- pexp(2, rate = 1/3, lower.tail = TRUE)
print(paste("Exercise 2 - Probability update takes at most 2 hours:", round(prob_update, 4)))

# Exercise 3:
# i.
prob_iq_130 <- pnorm(130, mean = 100, sd = 15, lower.tail = FALSE)
print(paste("Exercise 3i - Probability IQ > 130:", round(prob_iq_130, 4)))

# ii.
iq_95 <- qnorm(0.95, mean = 100, sd = 15, lower.tail = TRUE)
print(paste("Exercise 3ii - 95th percentile IQ score:", round(iq_95, 2)))

