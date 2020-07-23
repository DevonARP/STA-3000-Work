library(ISwR)
library(lubridate)
stroke <- read.csv2(system.file("rawdata","stroke.csv", package="ISwR"),na.strings=".")
stroke
str(stroke)
#1.1
stroke$DIED = dmy(stroke$DIED)
stroke$DSTR = dmy(stroke$DSTR)
#1.2
d1=mean(stroke$DIED,na.rm=TRUE)
d1
d2=median(stroke$DIED,na.rm = TRUE)
d2
a1="Mean is 1993-02-15 and the median is 1993-01-23"
a1
#1.3
s1=mean(stroke$DSTR,na.rm=TRUE)
s1
s2=median(stroke$DSTR,na.rm=TRUE)
s2
a2="Mean is 1992-07-27 and the median is 1992-08-12"
a2
#1.4
a3=difftime(d1,s1,units = 'days')
a3
#2
b1 = dbinom(6,size = 10,prob = .55)
b1
b2 = 1- pbinom(5,size=10,.55)
b2
#3
X=rnorm(1,mean=80.2,sd=2.12)
X
c1=pnorm(X,mean=80.2,sd=2.12)
c1
