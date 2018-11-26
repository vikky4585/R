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
box <- matrix(c(213.44, 54.44, 371.32,77.64, 455.67, 101.84), 
              ncol=2, byrow=T)
rownames(box) <- c("Matrix","Rloaded","Revolution")
colnames(box) <- c("Worldwide" ,"US")

box.scaled <- box/100
box.scaled

budget <- matrix(c(122.31,244.21,277.64),nrow=3, ncol=2)

budget

box - budget

box - c(120,111,142)

r.norm <- matrix(rnorm(1:6), nrow=3, ncol=2)
r.norm

box * r.norm

box %*% t(r.norm)

t(r.norm) %*% box
box

colSums(box)
rowSums(box)
colMeans(box)

box.summary <- rbind(box, colSums(box), colMeans(box))
box.summary

#rnorm and runif

m.rnorm <- matrix(rnorm(25), nrow = 5, ncol=5)
m.rnorm

m.runif <- matrix(runif(25), nrow = 5, ncol = 5)
m.runif

colMeans(m.rnorm)

rowMeans(m.runif)
min(m.rnorm)


#Factor
status <- c("Single","Married","Widowed", "Divorced","Single","Single","Married")
status
?str
factor.status <- factor(status)

typeof(factor.status)
?factor
?levels

new.status <- factor(status, ordered = T, levels = c("Married","Single","Widowed","Divorced")
                     , labels = c("M","S","W","D"))

new.status

#List

list.book <- list("Effective Java", "Bloch", 20, c(1:20))
list.book
list.book[1]
list.newbook <- list(Name="Effective Java","Author"= "Bloch",Copy= 20, Series=c(1:20))
list.newbook
list.newbook["Author"]
list.newbook[["Series"]][7]
