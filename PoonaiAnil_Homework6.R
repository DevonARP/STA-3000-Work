library(ggplot2)
head(diamonds)
#1
ggplot(diamonds, aes(cut)) +
  geom_bar()
#2
ggplot(diamonds, aes(x=cut,color=color))+
  geom_bar()
#3
ggplot(diamonds, aes(price))+
  geom_freqpoly()
#Most diamonds sell at less than $2500.
#4
ggplot(diamonds, aes(x = clarity,y = price))+
  geom_point()
#SI and VS clarity seems to have the highest prices while I1 seems to have the lowest.
#5
ggplot(diamonds, aes(x = cut, y = depth))+
  geom_boxplot()
#The boxplot interquartile range seems to get smaller as you go from fair to ideal cut and the ideal depth seems to be 63 in depth.
#6
ggplot(diamonds, aes(x = carat,y = price))+
  geom_point()
#7
ggplot(diamonds, aes(x = carat,y = price, color = cut))+
  geom_point()