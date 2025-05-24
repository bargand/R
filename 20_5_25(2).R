augmented <- read.csv("D:/augmented.csv")

View(augmented)
str(augmented)

augmented$block <- as.factor(augmented$block)
augmented$treatment <- as.factor(augmented$treatment)

out1 <- augmentedRCBD(augmented$block, augmented$treatment, augmented$y1, method.comp = "lsd", alpha = 0.05, group = TRUE, console = TRUE)

out2 <- augmentedRCBD(augmented$block, augmented$treatment, augmented$y2, method.comp = "lsd", alpha = 0.05, group = TRUE, console = TRUE)

gva.augmentedRCBD(out1)
gva.augmentedRCBD(out2)
