root_data <- data.frame(
  Treatment = rep(c("H1","H2","H3","H4","H5"), each = 6),
  Root_length = c(
    4.2, 4.5, 4.0, 4.3, 4.1, 4.4, #H1
    5.1, 5.3, 5.0, 5.2, 5.4, 5.1, #H2
    6.0, 6.2, 5.8, 6.1, 5.9, 6.0, #H3
    4.8, 4.9, 4.7, 4.6, 5.0, 4.8, #H4
    7.2, 7.0, 7.5, 7.1, 7.3, 7.4  #H5
  )
)
root_data

#perform

anova_model <- aov(Root_length ~ Treatment, data=root_data)
#Display the result
summary(anova_model)

#calculate SEM,SED and CV

#Mean Square error(MSE)
mse <- summary(anova_model)[[1]]$"Mean Sq"[2]
print(mse)
#No. of replication(n)
n <-6
#Standard error of mean (SEM)= to check the varaition within the group; is less than consistence
sem <- sqrt(mse/n)
print(sem)
