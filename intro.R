#wage1<-read.dta("http://fmwww.bc.edu/ec-p/data/wooldridge/wage1.dta")
#hprice3 <- read.dta("http://fmwww.bc.edu/ec-p/data/wooldridge/hprice3.dta")
crime3 <- read.dta("http://fmwww.bc.edu/ec-p/data/wooldridge/crime3.dta")
#head(wage1,3)
table(crime3$year)
1 - pbinom(100, size=106, prob=0.85)

dbinom(101, size=106, prob=0.85)
