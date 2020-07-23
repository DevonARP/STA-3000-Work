library(ISwR)
library(gridExtra)
library(tidyverse)
View(react)
str(react)
df=data.frame(react)

#1
a1 = ggplot(df,aes(react))+
  geom_histogram()
a2 = ggplot(df,aes(sample = react))+
  stat_qq_line()+
  geom_qq()
a1
a2
#Seems reasonably normal distributed
t.test(df$react)
mean(df$react)
#No, the mean doesn't stray far from zero

#2
data=midwest$percollege-42
data2=abs(data)
Ri=rank(data2)
Zi=(data2>0)*1
sum(Zi)
W=sum(Zi*Ri)
W
n=length(midwest$percollege)
mu=n*(n+1)/4
variance=(n*(n+1)*(2*n+1))/24
mu
variance
W2=(W-mu)/sqrt(variance)
W2
p=pnorm(W2,lower.tail = FALSE)
p
2*p

#3
pf=midwest %>%
  filter(state== "IL"|state=="WI") %>%
  select(state,percadultpoverty)
view(pf)
p1=ggplot(pf,aes(percadultpoverty))+
  geom_histogram()+
  facet_wrap(~state)
p2=ggplot(pf,aes(log(percadultpoverty)))+
  geom_histogram()+
  facet_wrap(~state)
p1
p2
t.test(log(percadultpoverty)~state,data=pf,var.equal=TRUE)
t.test(log(percadultpoverty)~state,data=pf,var.equal=FALSE)

#4
view(intake)
library(BlandAltmanLeh)
bland.altman.plot(intake$pre,intake$post,graph.sys = "ggplot2")
t.test(intake$pre,intake$post,paired = TRUE)
