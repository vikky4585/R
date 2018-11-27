

testfile <- read.table("data/pokRdex-comma.csv",
                       sep=",",
                       header = T,
                       stringsAsFactors = F)

testcsv <- read.csv("data/pokRdex-comma.csv", stringsAsFactors = F)

?read.delim
?read.csv
emp <- read.csv("data/employee-data.csv",skip=23, nrows = 200, col.names = c("Number","First","Last",
                                                                             "BirthDate","Gender","Title",
                                                                             "Salary","From","To"))
#write.csv(emp,row.names = F,file = "data/test.csv")
nrow(emp)

ncol(emp)

colnames(emp)

summary(emp)

#tibbles

library(tidyverse)
head(starwars)

test.data <- head(starwars[c("name","mass","height","birth_year","species")])

test.data[2,3]
test.data[4,"skin_color"]

test.data[2,]
str(test.data[,7])
test.data$homeworld

#add columns
rating <- c(5,4,3,4,5,1)
 #1
test.data$ratings <- rating
#2
test.data[["ratings"]] <- rating
#3
test.data <- cbind(test.data, Ratings = rating)

test.data

#remove columns
test.data$ratings<- NULL
test.data[["Ratings <- rating"]]<- NULL

#add row

new.data <- data.frame(name = "Stan Lee" ,mass = 177, height = 210, birth_year = 27, species="Human", Ratings=5)
rbind(test.data, new.data)


name.dog <- c("Flipper","Bromley","Nox","Orion","Dagger","Zizi","Carrie")
old.dog <- c(53,19,34,46,84,110,140)
size.dog <- c("medium","small","small","medium","large","large","large")
breed.dog <- c("dog","cat","cat","dog","cat","dog","dog")

pets <- data.frame(name.dog,old.dog,size.dog,breed.dog)

pets$vaccinated <- c("Yes","Yes","No","Yes","No","No","Yes")
pets
#to create subset based on condition
subset(pets, vaccinated=="Yes")

new.pet <- data.frame(name.dog="Mylo",old.dog=32,size.dog= "medium",breed.dog="dog",vaccinated="Yes")
rbind(pets, new.pet)

library(ggplot2)
df_diamonds <- as.data.frame(diamonds)
str(diamonds)
str(df_diamonds)

class(diamonds)
class(df_diamonds)
test.di <- head(diamonds)
test.di
str(test.di)

summary(diamonds)
