root_data <- data.frame(
  Treatment = rep(c("H1", "H2", "H3", "H4", "H5"), each = 6),
  Root_length = c(
    4.1,4.5, 4.0, 4.3, 4.1, 4.4,
    5.1, 5.3, 5.0, 5.2, 5.4, 5.1,
    6.0, 6.2, 5.8, 6.1, 5.9, 6.0,
    4.8, 4.9, 4.7, 4.6, 5.0, 4.8,
    7.2, 7.0, 7.5, 7.1, 7.3, 7.4
  )
)
print(root_data)

anova_model <- aov(Root_length ~ Treatment, data = root_data)
summary(anova_model)


#list square differance or critical differance

mse <- summary(anova_model)[[1]]$"Mean sq"[2]
print(mse)

n <- 6

sem <- sqrt(mse / n)
print(sem)


#Mean Square error(MSE)
mse <- summary(anova_model)[[1]]$"Mean Sq"[2]
print(mse)
#No. of replication(n)
n <-6
#Standard error of mean (SEM)= to check the varaition within the group; is less than consistence
sem <- sqrt(mse/n)
print(sem)

library(agricolae)
lsd_result_5 <- LSD.test(anova_model, "Treatment", alpha = 0.05)
lsd_result_1 <- LSD.test(anova_model, "Treatment", alpha = 0.01)

print(lsd_result_5)
print(lsd_result_1)

tukey_result <- TukeyHSD(anova_model)
print(tukey_result)

tukey_grouping <- HSD.test(anova_model,"Treatment", alpha = 0.05)

duncas_result <- duncan.test(anova_model, "Treatment", alpha = 0.05)
print(duncas_result$groups)












































































