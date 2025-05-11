claimed_mean <- 1200
sample_mean <- 1180
std_dev <- 100
sample_size <- 50
alpha <- 0.05

z_stat <- (sample_mean -claimed_mean)/(std_dev /sqrt (sample_size))
print((z_stat))

z_critical <- qnorm(1-alpha/2)
print(z_critical)

p_value <- 2*pnorm(-abs(z_stat))
print(p_value)

cat("Z-statistics:", z_stat, "/n")
cat("Critical Z-value (two tailed):", z_critical, "/n")
cat("P-value:", p_value, "/n")

if(abs(z_stat)>z_critical){
  cat("Reject the nul hypothesis at alpha=", alpha, "/n")
} else{
  cat("Fail to reject the nul hypothesis at alpha= ", alpha, "/n")
}

# R program to plot the normal distribution curve for the Z-test (Light Bulb Lifespan)

z_stat <- -1.414; alpha <- 0.05; z_critical <- qnorm(1 - alpha/2)
z_values <- seq(-4, 4, length=1000); y_values <- dnorm(z_values)

par(mar=c(5, 4, 4, 8), xpd=TRUE)
plot(z_values, y_values, type="l", col="blue", lwd=2, main="Normal Distribution for Z-Test", xlab="Z-value", ylab="Density")
abline(v=z_stat, col="red", lty=2, lwd=2); text(z_stat, 0.4, paste("Z =", round(z_stat, 3)), col="red", pos=2)
polygon(c(-4, z_values[z_values <= -z_critical], -z_critical), c(0, dnorm(z_values[z_values <= -z_critical]), 0), col=rgb(1,0,0,0.3), border=NA)
polygon(c(z_critical, z_values[z_values >= z_critical], 4), c(0, dnorm(z_values[z_values >= z_critical]), 0), col=rgb(1,0,0,0.3), border=NA)
abline(v=c(-z_critical, z_critical), col="black", lty=2)
text(-z_critical, 0.4, paste("Z =", -round(z_critical, 2)), pos=2); text(z_critical, 0.4, paste("Z =", round(z_critical, 2)), pos=4)
legend(4.5, 0.4, legend=c("Normal Curve", "Z-statistic", "Critical Values", "Rejection Region"), col=c("blue", "red", "black", rgb(1,0,0,0.3)), lty=c(1, 2, 2, NA), fill=c(NA, NA, NA, rgb(1,0,0,0.3)), border=NA, bty="n")


