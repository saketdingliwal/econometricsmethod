x <- c(10,13,1,3,7,5,11,2,4,15,19,0,7,1,9,10)

xbar <- mean(x)
s_sq = 0
#for(i in 1:16){
#  s_sq = s_sq + (x[i] - xbar)**2
#}
s_sq = sum((x-xbar)**2)
s = sqrt(s_sq/15)
t_test = (xbar - 5)/(s/sqrt(16))
