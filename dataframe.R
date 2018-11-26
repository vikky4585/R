?data.frame

name.dog <- c("Flipper","Bromley","Nox","Orion","Dagger","Zizi","Carrie")
old.dog <- c(53,19,34,46,84,110,140)
size.dog <- c("medium","small","small","medium","large","large","large")
breed.dog <- c("dog","cat","cat","dog","cat","dog","dog")

dog.dataframe <- data.frame(name.dog,old.dog,size.dog,breed.dog)
dog.dataframe

names(dog.dataframe) <- c("Name","Old","Size","Breed")
str(dog.dataframe)

levels(dog.dataframe[,"Breed"]) <- c("dog","cat")

#dog.dataframe <- data.frame(name.dog,old.dog,size.dog,breed.dog, stringsAsFactors=F)
