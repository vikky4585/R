
#histogram
library(tidyverse)
library(ggthemes)
emp <- as_tibble(read.csv("data/employee-data.csv", skip=23))

emp <- emp %>% filter(salary > 45000)    

hist <- ggplot(data=emp, aes(x= salary))

hist + 
  geom_histogram(color="grey", fill="lightgreen", alpha=0.7, binwidth = 5000) + 
  ggtitle("Title distribution in the employee data")+ 
  labs( x ="Salary(above 45000)", y = "Number of employees in the salary bracket") +
  theme_solarized_2(light = FALSE, base_size = 15, base_family = "serif")
