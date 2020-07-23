library(tidyverse)
homework8data <- read_csv("C:/Users/poona/Downloads/homework8data.csv")
View(homework8data)
str(homework8data)

#Backward
b1=lm(`Life Exp`~Population+Income+Illiteracy+
        Murder+`HS Grad`+Frost+Area,data = homework8data)
summary(b1)
A=.15

b2=lm(`Life Exp`~Population+
        Murder+`HS Grad`+Frost,data = homework8data)
summary(b2)

#Forward
A=.15
f1=lm(`Life Exp`~Population,data = homework8data)
summary(f1)
f2=lm(`Life Exp`~Income,data = homework8data)
summary(f2)
f3=lm(`Life Exp`~Illiteracy,data = homework8data)
summary(f3)
f4=lm(`Life Exp`~Murder,data = homework8data)
summary(f4)
f5=lm(`Life Exp`~`HS Grad`,data = homework8data)
summary(f5)
f6=lm(`Life Exp`~Frost,data = homework8data)
summary(f6)
f7=lm(`Life Exp`~Area,data = homework8data)
summary(f7)

f1.1=lm(`Life Exp`~Murder+Population,data = homework8data)
summary(f1.1)
f1.2=lm(`Life Exp`~Murder+Income,data = homework8data)
summary(f1.2)
f1.3=lm(`Life Exp`~Murder+Illiteracy,data = homework8data)
summary(f1.3)
f1.4=lm(`Life Exp`~Murder+`HS Grad`,data = homework8data)
summary(f1.4)
f1.5=lm(`Life Exp`~Murder+Frost,data = homework8data)
summary(f1.5)
f1.6=lm(`Life Exp`~Murder+Area,data = homework8data)
summary(f1.6)

f2.1=lm(`Life Exp`~Murder+`HS Grad`+Population,data = homework8data)
summary(f2.1)
f2.2=lm(`Life Exp`~Murder+`HS Grad`+Income,data = homework8data)
summary(f2.2)
f2.3=lm(`Life Exp`~Murder+`HS Grad`+Illiteracy,data = homework8data)
summary(f2.3)
f2.4=lm(`Life Exp`~Murder+`HS Grad`+Frost,data = homework8data)
summary(f2.4)
f2.5=lm(`Life Exp`~Murder+`HS Grad`+Area,data = homework8data)
summary(f2.5)

f3.1=lm(`Life Exp`~Murder+`HS Grad`+Frost+Population,data = homework8data)
summary(f3.1)
f3.2=lm(`Life Exp`~Murder+`HS Grad`+Frost+Income,data = homework8data)
summary(f3.2)
f3.3=lm(`Life Exp`~Murder+`HS Grad`+Frost+Illiteracy,data = homework8data)
summary(f3.3)
f3.4=lm(`Life Exp`~Murder+`HS Grad`+Frost+Area,data = homework8data)
summary(f3.4)

f4.1=lm(`Life Exp`~Murder+`HS Grad`+Frost+Population+Income,data = homework8data)
summary(f4.1)
f4.2=lm(`Life Exp`~Murder+`HS Grad`+Frost+Population+Illiteracy,data = homework8data)
summary(f4.2)
f4.3=lm(`Life Exp`~Murder+`HS Grad`+Frost+Population+Area,data = homework8data)
summary(f4.3)

f5=lm(`Life Exp`~Murder+`HS Grad`+Frost+Population,data = homework8data)    
summary(f5)

#Stepwise Backward
step(b1, direction = 'backward')

#Stepwise Forward
sf=lm(`Life Exp`~1,data = homework8data)
summary(sf)
step(sf,scope = list(upper=b1),direction = 'forward')
