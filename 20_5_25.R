exam <- vignaR
View(exam)
str(exam)

exam$Rep <- as.factor(exam$Rep)
exam$Gen_nm <- as.factor(exam$Gen_nm)
str(exam)

characters <- colnames(exam)[3:12]
print(characters)

formula <- as.formula((DFF ~ Gen_nm + Rep))
anova_model <- aov(formula, data = exam)
summary(anova_model)