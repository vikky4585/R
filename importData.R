

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
write.csv(emp,row.names = F,file = "data/test.csv")
