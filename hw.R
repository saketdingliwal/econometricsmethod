x <- runif(2000,min=1,max=100)
u <- 2 * x + rnorm(2000,12,100)
beta1 <- 2
beta0 <- 3
y <- beta0 + beta1 * x + u

# here the mean vlue of unobserved random variable is not 0
olsvar <- lm(y ~ x)
bhat <- coef(CEOregres)
summary(olsvar)

# conditional expectation depends on x   


# see that b0hat is very different from b0 
yhat <- fitted(olsvar)
uhat <- y - yhat
#property 1
sum(uhat)
#property 2
x_uhat <- sum(x*uhat)
cov(x,uhat)
#property3
sst <- var(y)
sse <- var(yhat)
ssr <- var(uhat)
sst_cal <- sse + ssr
cov(uhat,yhat)
