Height <- c(100, 110, 120, 130)
Yield <- c(250, 280, 310, 340)

model <- lm(Yield ~ Height)
summary(model)
anova(model)

plot(Height, Yield, xlab = "Height", ylab = "Yield", main = "Yield vs Height to check linearity")
abline(model, col= "green")