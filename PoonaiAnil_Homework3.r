library(dplyr)
g = list(g1 = c(-0.01, 1.72, -0.52, -1.23, -1.17, 1.08, -1.33, -0.34, 0.57, -0.61), g2 = "R Programming", g3 = "HTML")
#1
a1 = mean(g[[1]])
a1
a2 = mean(g[[1]][1:3])
a2
g[2:3]
#2
library(readr)
hsb2 <- read_csv("C:/Users/poona/Downloads/hsb2.csv")
View(hsb2)
#2.1
b1 = mean(hsb2$read)
b1
#2.2
hsb3 = filter(hsb2, math >= 50)
b2 = mean(hsb3$read)
b2
#It's greater than the overall mean.
#2.3
white = filter(hsb2, race == "white")
w_math = mean(white$math)
w_math
not_white = filter(hsb2, race != "white")
nw_math = mean(not_white$math)
nw_math
b3 = w_math - nw_math
b3
#2.4
hs_white = filter(white, ses == 'high')
hs_nwhite = filter(not_white, ses == 'high')
ws_math = mean(hs_white$math)
ws_math
ns_math = mean(hs_nwhite$math)
ns_math
b4 = ws_math - ns_math
b4
#2.5
public = filter(hsb2, schtyp == 'public')
b5 = nrow(public)/nrow(hsb2)
b5
#2.6
low = filter(hsb2, ses == 'low')
lpublic = filter(low, schtyp == 'public')
b6 = nrow(lpublic)/nrow(low)
b6