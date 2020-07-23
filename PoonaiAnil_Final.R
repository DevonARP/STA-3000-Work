library(tidyverse)
options(max.print = 10000)

#1

#1.1

cost = 2500+4500+4500+2500

#1.2

s1= rnorm(n=1,mean = 10000, sd=2500)
s1
s2= rnorm(1,mean=7000,sd=1400)
s2

#1.3

r1=s1+s2
r1

#1.4

s3=rnorm(n=10000,mean=10000,sd=2500)
s3
s4=rnorm(n=10000,mean=7000,sd=1400)
s4
r2=(s3+s4)-cost
r2

#1.5

perc=sum(r2>0)/10000
perc

#2

library(fivethirtyeight)
view(fandango)

#2.1

fandango=fandango[order(fandango$rottentomatoes),]
t5=tail(fandango,5)
t5
w5=head(fandango,5)
w5

#2.2

fandango=mutate(fandango,average=(fandango$rottentomatoes_user+fandango$metacritic_user+fandango$imdb)/3)
fandango=fandango[order(fandango$average),]
ta5=tail(fandango,5)
ta5
wa5=head(fandango,5)
wa5

#2.3

ggplot(data = fandango,aes(fandango_stars,fandango_ratingvalue))+
  geom_line()+
  geom_jitter()
#Stars have more value as they increase for fandango. 

#2.4

t.test(fandango$fandango_stars,fandango$fandango_ratingvalue,paired = TRUE)
#No significant difference

#3

#3.1

salary <- read_csv("C:/Users/poona/Desktop/salary.csv")
View(salary)
ggplot(data=salary,aes(Salary,Anxiety,color=Education))+
  geom_point()+
  ggtitle("Anxiety by Salary Level")
#Salary tends to go up with an increase in education and anxiety

#3.2

d1=filter(salary,salary$Education=="Low")
d2=filter(salary,salary$Education=="Medium")
d3=filter(salary,salary$Education=="High")

#3.3

l1=lm(Salary~Anxiety,data = d1)
summary(l1)
l2=lm(Salary~Anxiety,data = d2)
summary(l2)
l3=lm(Salary~Anxiety,data = d3)
summary(l3)

#3.4

#Where the education is low, the anxiety doesn't explain the salary level due to the R squared value being so low.
#Where the education is medium, the anxiety doesn't explain the salary level due to the R squared value being so low.
#Where the education is high, the anxiety doesn't explain the salary level due to the R squared value being so low.
#Anxiety is not a reliable predictor for salary when education is the same on a linear model.

#4

admin <- read_csv("C:/Users/poona/Desktop/admin.csv")
View(admin)

#4.1

m1=filter(admin,Gender=="Male")
m2=filter(m1,Admit=="Admitted")
mper=nrow(m2)/nrow(m1)
mper
w1=filter(admin,Gender=="Female")
w2=filter(w1,Admit=="Admitted")
wper=nrow(w2)/nrow(w1)
wper
#No discrimination suggested with these numbers

#4.2

dea=filter(admin,Dept=="A")
deam=filter(dea,Gender=="Male")
deama=filter(deam,Admit=="Admitted")
mpera=nrow(deama)/nrow(deam)
mpera
deaf=filter(dea,Gender=="Female")
deafa=filter(deaf,Admit=="Admitted")
wpera=nrow(deafa)/nrow(deaf)
mpera

deb=filter(admin,Dept=="B")
debm=filter(deb,Gender=="Male")
debma=filter(debm,Admit=="Admitted")
mperb=nrow(debma)/nrow(debm)
mperb
debf=filter(deb,Gender=="Female")
debfa=filter(debf,Admit=="Admitted")
wperb=nrow(debfa)/nrow(debf)
wperb

dec=filter(admin,Dept=="C")
decm=filter(dec,Gender=="Male")
decma=filter(decm,Admit=="Admitted")
mperc=nrow(decma)/nrow(decm)
mperc
decf=filter(dec,Gender=="Female")
decfa=filter(decf,Admit=="Admitted")
wperc=nrow(decfa)/nrow(decf)
wperc

ded=filter(admin,Dept=="D")
dedm=filter(ded,Gender=="Male")
dedma=filter(dedm,Admit=="Admitted")
mperd=nrow(dedma)/nrow(dedm)
mperd
dedf=filter(ded,Gender=="Female")
dedfa=filter(dedf,Admit=="Admitted")
wperd=nrow(dedfa)/nrow(dedf)
wperd

dee=filter(admin,Dept=="E")
deem=filter(dee,Gender=="Male")
deema=filter(deem,Admit=="Admitted")
mpere=nrow(deema)/nrow(deem)
mpere
deef=filter(dee,Gender=="Female")
deefa=filter(deef,Admit=="Admitted")
wpere=nrow(deefa)/nrow(deef)
wpere

def=filter(admin,Dept=="F")
defm=filter(def,Gender=="Male")
defma=filter(defm,Admit=="Admitted")
mperf=nrow(defma)/nrow(defm)
mperf
deff=filter(def,Gender=="Female")
deffa=filter(deff,Admit=="Admitted")
wperf=nrow(deffa)/nrow(deff)
wperf
#Results are the same as previous question

#4.3

#No evidence of gender discrimination.
#Everything is 50% across the board

#5

me=400000000
mev=c(400000000)
friend=120000000
friendv=c(120000000)

#5.1

for (i in 1:14) {
  me=.8*me
  friend=.9*friend
  mev=c(mev,me)
  friendv=c(friendv,friend)
}
mev
friendv

#5.2

mg=ts(mev,start = 0,end = 14)
fg=ts(friendv,start=0,end=14)
ts.plot(mg,fg,gpars = list(col = c("blue", "red")))

#5.3

#My friends coronavirus numbers start to surpass mine around day 10

#Extra Credit

ec= matrix(nrow=5,ncol = 5,byrow = TRUE)
ec
ecv=c(0,1,2,3,4,.1,0,0,0,0,0,.2,0,0,0,0,0,.3,0,0,0,0,0,.4,0)
p=0
for (i in 1:5) {
  for (x in 1:5) {
    p=p+1
    ec[i,x]=ecv[p]
    
  }
  
}
ec
