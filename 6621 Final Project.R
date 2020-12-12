setwd("/Users/cgraber/Desktop")

SBP <- read.csv("final_exam_data.csv")



SBP.lm <- lm(SBP0 ~ naprox, data = SBP)
summary(SBP.lm)

confint(SBP.lm, 'naprox', level=0.95)

# For every one unit increase in naprox SBP0 increases by 0.1035 (p = 0.0449; 95% CI: 0.0024 - 0.2045)

rsq <- function (x, y) cor(x, y) ^ 2
rsq(SBP$SBP0, SBP$naprox)

# R^2 = 0.01279
# Adj R^2 = 0.009636