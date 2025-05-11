fertilizer <- c(10,20,30,40,50)
yield <- c(2.5, 3.0, 3.8, 4.2, 4.8)
model <- lm(yield ~ fertilizer)
summary(model)


anova(model)

plot(fertilizer, yield, main= "Maize yield vs Fertilizer", xlab="Fettilizer", ylab="yield")
abline(model, col="red")