rainfall<- c(300,450,500,600,700,800)
yield<- c(2000,2500,2700,3000,3200,3500)

corellation <- cor(rainfall, yield, method = "pearson")
print(corellation)

cor_test <- cor.test(rainfall, yield, method = "pearson")
print(cor_test)


library(ppcor)
data <-data.frame(
  Achievement = c(15,18,13,14,19,11,17,20,10,16),
  Anxiety = c(6,3,8,6,2,3,4,4,5,7),
  Intelligence = c(25,29,27,24,30,21,26,31,20,25)
)

partial_corellation<- pcor.test(data$Achievement,data$Anxiety,data$Intelligence, method = "pearson")

print(partial_corellation)



