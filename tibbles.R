
library(tidyverse)

test <- starwars

View(test)

filter(test, height > 170 & eye_color == "blue", species != "Human")

select(test, name, height, mass, species)
select(test, name:mass)
select(test, contains("color"))
select(test, species, name, everything())
test


test <- mutate(test, bmi = height/mass)

select(test, name, bmi)

test.trans <- transmute(test, bmi=height/mass)
test.trans

arrange(test, desc(mass))

summarise(test, avg.mass= mean(mass, na.rm = T), max.ht = max(height, na.rm =T))

test.group <- group_by(test, species)

t.summary<- summarise(test.group, avg.mass= mean(mass, na.rm = T), max.ht = max(height, na.rm =T))
nrow(t.summary)


sample_n(test, 10)
sample_frac(test, 0.15)

#pipe

test %>% group_by(species) %>% summarise(count = n(), max.ht = max(height, na.rm=T)) %>% filter(count >1)

#exercise1

emp.data <- read.csv("data/employee-data.csv",skip=23)
emp <- as_tibble(emp.data)

emp$gender <- as.factor(emp$gender)
emp$title <- as.factor(emp$title)
str(emp)

any(is.na(emp))

emp1 <- emp %>% 
  filter(salary>70000) %>% 
  select(ends_with("name"),gender, everything()) %>% arrange(gender, last_name)

emp1

emp2 <- filter(emp, salary > 70000)

emp2 %>% group_by(title, gender) %>% summarise(mean.sal = mean(salary, na.rm = T)) %>% arrange(gender, desc(mean.sal))

#gather
bill <- as.tibble(read.csv("data/billboard.csv"))
bill

bill %>% gather(x1st.week:x76th.week, key="week", value = "rank", na.rm=T)%>% arrange(artist.inverted)
#%>% separate(week, into = c("week.no", "week.type"), sep = ".")

#exercise
wthr <- as.tibble(read.csv("data/weather-untidy.csv"))
head(wthr)

gather.wthr <- wthr %>% gather(d1:d31, key="data", value = "val", na.rm=T)

spread.wthr <- gather.wthr %>% spread(key = element, value = val)
spread.wthr

tb <- as.tibble(read.csv("data/tb-untidy.csv"))
tb

gCol <- select(tb, matches("m|f"))
gCol


tb %>% 
  gather(m04:fu , key="gender", value = "val", na.rm = T) %>%
  separate("gender",into = c("gender","age"), sep="0", na.rm=T)


