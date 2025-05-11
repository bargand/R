data <- read.csv("D:/excel/vignaR.csv")
model <- lm(SYPP ~ DFF+DTM+PH+BPP+NPPP+PL+NCPP+NSPPO+TSW, data=data)
model
summary(model)
anova(model)