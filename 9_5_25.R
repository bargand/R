variety_A <- c(12.5, 12.7, 12.8, 12.9, 13.0, 13.2, 13.4, 13.5, 13.7, 13.8, 14.0, 14.1, 14.2, 14.3, 14.5)
variety_B <- c(13.0, 13.1, 13.2, 13.3, 13.4, 13.5, 13.6, 13.7, 13.8, 13.9, 14.0, 14.1, 14.2, 14.3, 14.4)

summary(variety_A)
mean_A <- mean(variety_A)
median_A <- median(variety_A)
range_A <- range(variety_A)
var_A <- var(variety_A)
sd_A <- sd(variety_A)
sem_A <- sd_A / sqrt(length(variety_A))
cv_A <- (sd_A / mean_A) * 100

cat(mean_A, median_A, range_A, var_A, sd_A, sem_A, cv_A)


summary(variety_B)
mean_B <- mean(variety_B)
median_B <- median(variety_B)
range_B <- range(variety_B)
var_B <- var(variety_B)
sd_B <- sd(variety_B)
sem_B <- sd_B / sqrt(length(variety_B))
cv_B <- (sd_B / mean_B) * 100

cat(mean_B, median_B, range_B, var_B, sd_B, sem_B, cv_B)


#Comparison between A and B

sed <- sqrt(sem_A^2+ sem_B^2)
t_value <- 2.048   #t value for different df=28
cd <- t_value * sed

cat(sed, cd)


#data visualization

variety_A <- c(12.5, 12.7, 12.8, 12.9, 13.0, 13.2, 13.4, 13.5, 13.7, 13.8, 14.0, 14.1, 14.2, 14.3, 14.5)
variety_B <- c(13.0, 13.1, 13.2, 13.3, 13.4, 13.5, 13.6, 13.7, 13.8, 13.9, 14.0, 14.1, 14.2, 14.3, 14.4)

data <- data.frame(
  value = c(variety_A, variety_B),
  variety = rep(c("A", "B"), each = length(variety_A))
)

data

library(ggplot2)

par(mfrow = c(1, 2))

hist(variety_A, col = "red", main = "Histogram of variety A", xlab = "value", ylab = "frequency", breaks = 10, xlim = c(12, 15), ylim = c(0, 5))
hist(variety_B, col = "blue", main = "Histogram of variety B", xlab = "value", ylab = "frequency", breaks = 10, xlim = c(12, 15), ylim = c(0, 5))



















