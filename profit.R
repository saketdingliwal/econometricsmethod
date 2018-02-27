n <- seq(101, 200)
p <- seq(1,100)
c <- seq(1,100)
profit <- seq(1,100)

for(i in 101:200){
  p[i-100] <- 1 - pbinom(100, size=i, prob=0.85)
}

for(i in 101:200){
  c[i-100] <- 0
  profit[i-100] <- i
  for(j in 1:(i-100)){
    c[i-100] <- c[i-100] + j*dbinom(100+j,i,0.85)
    profit[i-100] <- profit[i-100] - 2*j*dbinom(100+j,i,0.85)
  }
}

#plot(p,n)
mydata <- cbind(n,p)
plot(mydata)

compensation <- cbind(n,c)
plot(compensation)

myprofit <- cbind(n,profit)
plot(myprofit)
#Find expected compensation, optimal number of tickets

