gdp <- matrix(c(22,34,65,81,41,43,41,46, 80,78,77,81), nrow=3, byrow=T, dimnames = list(c("chicago","sand diego","cancun"), c("Jan","April","July","October")))
gdp

#indexing
gdp[2,3]
gdp[1]

gdp[1,]

gdp["chicago",]

#slicing
gdp[c(1,2),]

gdp["cancun",c(1,4)]
gdp["chicago","October"]
gdp[c(1,2)]

#arithmetic
