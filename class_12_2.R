ceosal <- read.dta("http://fmwww.bc.edu/ec-p/data/wooldridge/ceosal1.dta")
#sal = b0 + b1roe + u
sal <- ceosal$salary
roe <- ceosal$roe
b1h = cov(sal,roe) / var(roe)
b0h = mean(sal) - b1h*mean(roe)

#```{r eval=TRUE, echo=TRUE}
#OLS regression
#lm = linear model
CEOregres <- lm(salary ~ roe, data = ceosal)
plot(ceosal$roe, ceosal$salary, ylim=c(0,4000))
abline(CEOregres)
#```

names(CEOregres)
CEOregres$coefficients

n = nobs(CEOregres)
coef(CEOregres)

bhat <- coef(CEOregres)
yhat <- bhat["(Intercept)"] + bhat["roe"]*ceosal$roe
uhat <- ceosal$salary - yhat

#part1


#part2
plot(ceosal$roe, ceosal$salary, ylim=c(0,4000))
plot(mean(roe),mean(sal))
abline(CEOregres)


#sd(bhat["(Intercept)"])
#sd(bhat["roe"])

#####ASK
s_hat_2 = sum(uhat^2)/(n-2)
var_bhat = s_hat_2 / (n*var(roe))

#summary

#these must be zero
cov(yhat,uhat)
sum(ceosal$roe*uhat)
sum(uhat)
mean(uhat)
cor(uhat,roe)
