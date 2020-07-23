library(gapminder)
library(dbplyr)
library(tidyverse)
#1.1
y1952 = select(gapminder,continent,year,lifeExp) %>%
  filter(year==1952) %>%
  select(continent,lifeExp) %>%
  group_by(continent) %>%
  summarize(mean(lifeExp))
y1952
y2007 = select(gapminder,continent,year,lifeExp) %>%
  filter(year==2007) %>%
  select(continent,lifeExp) %>%
  group_by(continent) %>%
  summarize(mean(lifeExp))
y2007
(y2007$`mean(lifeExp)`-y1952$`mean(lifeExp)`)/y1952$`mean(lifeExp)`
a1 = c("Asia",52.71)
#1.2
a2 = select(gapminder,continent,year,gdpPercap) %>%
  filter(year==2007,continent=="Africa") %>%
  summarise(max(gdpPercap))
a2
#1.3
a3 = select(gapminder,continent,year,gdpPercap) %>%
  filter(year==2007,continent=="Europe") %>%
  summarise(max(gdpPercap))
a3
#1.4
a4 = select(gapminder,continent,country,year,pop) %>%
  filter(year==2007,continent=="Asia") %>%
  filter(pop>50000000) %>%
  count()
a4 = (a4/33)*100
a4
#1.5
a5 = select(gapminder,continent,country,year,gdpPercap) %>%
  filter(year==2007,continent=="Europe") %>%
  filter(gdpPercap>30000) %>%
  count()
a5 = (a5/33)*100
a5  
#2
library(readr)
nba_ht_wt <- read_csv("http://users.stat.ufl.edu/~winner/data/nba_ht_wt.csv")
View(nba_ht_wt)
#2.1
nba_ht_wt$Height = nba_ht_wt$Height*.0254
nba_ht_wt$Weight = nba_ht_wt$Weight*.453592
#2.2
BMI=((nba_ht_wt$Weight)/((nba_ht_wt$Height)^2))
nba_ht_wt$BMI = BMI
max(nba_ht_wt$BMI)
subset(nba_ht_wt,BMI>30.5)
#2.3
b2 = (count(subset(nba_ht_wt,BMI>25))/505)*100
b2
#2.4
b3 = select(nba_ht_wt,Age,BMI) %>%
  filter(Age>30) %>%
  summarize(mean(BMI))
b3
#2.5
b4 = select(nba_ht_wt,Pos,BMI) %>%
  filter(Pos=="F") %>%
  summarize(mean(BMI))
b4
