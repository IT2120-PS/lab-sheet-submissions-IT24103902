setwd("C:\\Users\\User\\Desktop\\IT24103902")

# Exercise Question 1
# Part (i): Generate random sample of size 25
baking_time <- rnorm(25, mean = 45, sd = 2)
print("Generated baking times:")
print(baking_time)

# Part (ii): Hypothesis test
# H0: μ ≥ 46 minutes (average baking time is at least 46 minutes)
# H1: μ < 46 minutes (average baking time is less than 46 minutes)
# Significance level: 5% (α = 0.05)

test_result <- t.test(baking_time, mu = 46, alternative = "less")
print(test_result)

# Extract specific values
test_statistic <- test_result$statistic
p_value <- test_result$p.value
confidence_interval <- test_result$conf.int

cat("\n--- Extracted Values ---\n")
cat("Test Statistic (t):", test_statistic, "\n")
cat("P-value:", p_value, "\n")
cat("Confidence Interval:", confidence_interval, "\n")

# Conclusion based on p-value approach
if (p_value < 0.05) {
  conclusion <- "Reject H0: There is sufficient evidence that average baking time is less than 46 minutes."
} else {
  conclusion <- "Do not reject H0: There is insufficient evidence that average baking time is less than 46 minutes."
}

cat("\nConclusion:", conclusion, "\n")