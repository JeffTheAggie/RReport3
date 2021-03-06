#1a
crime_data = crime
crime_hist = plot(crime_data, main = "The Occurances of Crime in Multiple Countries", xlab = "Percentage with a high school diploma", ylab = "The Crime Rate")
#1b
crime_regression = lm(rate~dip, data = crime)
#1e
qqnorm(crime_regression$residuals)
qqline(crime_regression$residuals)
#1f
plot(crime_regression$fitted.values,crime_regression$residuals, xlab = "Fitted Values", ylab= "Residuals", main = "Residuals vs. FittedValues")
abline(h=0)
#1g
CI = confint(crime_regression, parm = "dip", level = 0.95)
#2b
t.test(crime$dip, mu = 80)
