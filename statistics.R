#skewness

library(tidyverse)

s1 <- read.csv("data/skew-1.csv")
s1
summary(s1)

g_s1 <- ggplot(data = s1, aes(x=Dataset.1, fill="lightred"))
g_s1 + geom_histogram(binwidth = 100)


s2 <- read.csv("data/skew-2.csv")
s2
summary(s2)

g_s2 <- ggplot(data = s2, aes(x=Dataset.2, fill="lightred"))
g_s2 + geom_histogram(binwidth = 100)

#coefficient of varaince

coeff <- sapply(s1, sd) / sapply(s1, mean)
coeff

#correlation coefficient
cor(s1$Dataset.1, s2$Dataset.2)

cor.test(s1$Dataset.1, s2$Dataset.2)


#exercise

p <- as.tibble(read.csv("data/practical-product.csv"))
c <- as.tibble(read.csv("data/practical-customer.csv"))

p %>% ggplot(aes(x=Price)) + geom_histogram(binwidth = 100000) + theme_wsj()

p %>% ggplot(aes(x=Price, y=Area..ft.., color=Status)) +  geom_point() + theme_economist()

mean(p$Price)
median(p$Price)

max(table(p$Price))

sd(p$Price)

cor(p$Price, p$Area..ft..)
cor.test(p$Price, p$Area..ft..)
