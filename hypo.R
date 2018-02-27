count = 0
for(i in 1:100){
  x <- rnorm(100,1.6,2)
  xbar <- mean(x)
  sxbar <- 2/sqrt(100)
  l <- xbar - 1.96*sxbar
  h <- xbar + 1.96*sxbar
  if(1.6 > l && 1.6 < h){
    count = count + 1
  }
}

