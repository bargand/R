mustard_data <- data.frame(
  Variety = rep(c("V1", "V2", "V3", "V4"), each = 5),
  Block = rep(paste0("B", 1:5), times = 4),
  Yield = c(
    9.4, 8.3, 8.2, 9.8, 9.3,
    10.0, 9.5, 8.4, 9.2, 10.4,
    10.6, 11.4, 11.5, 10.7, 10.8,
    10.2, 10.8, 11.3, 10.9, 9.3
  )
)

rcbd_model <- aov(Yield ~ Variety + Block, data= mustard_data)
Anova_table <- summary(rcbd_model)
print(Anova_table)

mse <- Anova_table[[1]]$`Mean Sq`[3]
r <- 5

sem <- sqrt(mse / r)
print(sem)

sed <- sqrt(2 * mse / r)
print(sed)

grand_mean <- mean(mustard_data$Yield)
cv <- (sqrt(mse) / grand_mean) * 100

cat("SEM:", sem, "SED:", sed, "CV:", cv)

library(agricolae)

lsd_5 <- LSD.test(rcbd_model, "Variety", alpha = 0.05)
lsd_1 <- LSD.test(rcbd_model, "Variety", alpha = 0.01)

cat("LSD (5%):", lsd_5$statistics$LSD, "LSD (1%):", lsd_1$statistics$LSD)
cat("CD (5%):", lsd_5$statistics$LSD, "LSD (1%):", lsd_1$statistics$LSD)

lsd_groups <- lsd_5$groups
print(lsd_groups)


Read_data <- read.csv("D:/excel/vignaR.csv")

moong <- Read_data
print(moong)


traits <- c("DFF", "DTM", "PH", "BPP", "NPPP", "PL", "NCPP", "NSPPO", "TSW", "SYPP")

# or 

#
print(traits)























