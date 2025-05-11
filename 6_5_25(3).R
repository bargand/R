# R program for one-sample Z-test for cereal box weight

# Step 1: Define the given values
claimed_mean <- 25000        # Claimed mean weight (mu_0)
sample_mean <- 25500         # Sample mean weight (x_bar)
std_dev <- 1200              # Known population standard deviation (sigma)
sample_size <- 50          # Sample size (n)
alpha <- 0.05              # Significance level

# Step 2: Calculate the Z-statistic
z_stat <- (sample_mean - claimed_mean) / (std_dev / sqrt(sample_size))
z_stat
# Step 3: Calculate the critical Z-value for a left-tailed test at alpha = 0.05
z_critical <- qnorm(alpha)  # Left-tailed test

# Step 4: Calculate the p-value for the Z-statistic
p_value <- pnorm(z_stat)  # Left-tailed test
p_value <-1-pnorm(z_stat) # right tailed test
p_value
# Step 5: Print the results
cat("Z-statistic:", z_stat, "\n")
cat("Critical Z-value (left-tailed):", z_critical, "\n")
cat("P-value:", p_value, "\n")

# Step 6: Make a decision
if (z_stat < z_critical) {
  cat("Reject the null hypothesis at alpha =", alpha, "\n")
} else {
  cat("Fail to reject the null hypothesis at alpha =", alpha, "\n")
}

# Concise R program for normal distribution curve of Z-test (Cereal Box Weight)

z_stat <- 2.946278; alpha <- 0.05; z_critical <- qnorm(alpha)
z_values <- seq(-4, 4, length=1000); y_values <- dnorm(z_values)

par(mar=c(5, 4, 4, 8), xpd=TRUE)
plot(z_values, y_values, type="l", col="blue", lwd=2, main="Normal Distribution for Z-Test (Cereal Box Weight)", xlab="Z-value", ylab="Density")
abline(v=z_stat, col="red", lty=2, lwd=2); text(z_stat, 0.4, paste("Z =", round(z_stat, 3)), col="red", pos=2)
polygon(c(-4, z_values[z_values <= z_critical], z_critical), c(0, dnorm(z_values[z_values <= z_critical]), 0), col=rgb(1,0,0,0.3), border=NA)
abline(v=z_critical, col="black", lty=2)
text(z_critical, 0.4, paste("Z =", round(z_critical, 2)), pos=4)
legend(4.5, 0.4, legend=c("Normal Curve", "Z-statistic", "Critical Value", "Rejection Region"), col=c("blue", "red", "black", rgb(1,0,0,0.3)), lty=c(1, 2, 2, NA), fill=c(NA, NA, NA, rgb(1,0,0,0.3)), border=NA, bty="n")
