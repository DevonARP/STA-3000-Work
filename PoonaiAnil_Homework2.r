Carbs = c(50,60,40)
Fat = c(8,30,30)
Protein = c(20,40,40)
dat1 = data.frame(Carbs,Fat,Protein)
rownames(dat1) = c("Breakfast","Lunch","Dinner")
dat1

#1
p1 = c(sum(dat1$Carbs),sum(dat1$Fat),sum(dat1$Protein))
p1

#2
CCarbs = dat1$Carbs * 4
CFat = dat1$Fat * 9
CProtein = dat1$Protein * 4
dat2 = data.frame(CCarbs,CFat,CProtein)
rownames(dat2) = c("Breakfast","Lunch","Dinner")
dat2
p2 = rowSums(dat2)
p2
p3 = sum(p2)
p3
# He did stay under his goal of 1800 calories.

#3
c1 = colSums(dat2)
c1
p4 = c1/p3
p4
# He could eat more Carbs and Protein and less Fat.