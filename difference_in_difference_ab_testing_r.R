# Load aggregated data

df = read.csv('differenced_data.csv')
df$treated = as.factor(df$treated)

# Levene's Test for Variance Equality
library(car)
leveneTest(difTraffic ~ treated, data = df)
leveneTest(difCart ~ treated, data = df)
leveneTest(difBuy ~ treated, data = df)

# Mean comparison tests
## ANOVA's test for mean difference with equal variances
### Not recommended in this case because Levene's tests return unequal variances for all metrics
summary(aov(difTraffic ~ treated, data = df))
summary(aov(difCart ~ treated, data = df))
summary(aov(difBuy ~ treated, data = df))

# Welch's test for mean difference with unequal variances
## appropriate for this case due to unequal variances
library(onewaytests)
welch.test(difTraffic ~ treated, data = df)
welch.test(difCart ~ treated, data = df)
welch.test(difBuy ~ treated, data = df)

# Post-hoc Pairwise Comparison
## Tukey's for equal variances
tukey_hsd(df, difTraffic ~ treated, data = df, conf.level = 0.95)
tukey_hsd(df, difCart ~ treated, data = df, conf.level = 0.95)
tukey_hsd(df, difBuy ~ treated, data = df, conf.level = 0.95)

## Games-Howell's for unequal variances
library(rstatix)
games_howell_test(difTraffic ~ treated, data = df, conf.level = 0.95)
games_howell_test(difCart ~ treated, data = df, conf.level = 0.95)
games_howell_test(difBuy ~ treated, data = df, conf.level = 0.95)

