augmented <- read.csv("D:/aug2.csv")

View(augmented)
str(augmented)

augmented$block <- as.factor(augmented$block)
augmented$treatment <- as.factor(augmented$treatment)

out1 <- augmentedRCBD(augmented$block, augmented$treatment, augmented$trait1, method.comp = "lsd", alpha = 0.05, group = TRUE, console = TRUE)

gva.augmentedRCBD(out1)