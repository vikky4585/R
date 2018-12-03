
#histogram
library(tidyverse)
library(ggthemes)
emp <- as_tibble(read.csv("data/employee-data.csv", skip=23))
emp
emp_hist <- emp %>% filter(salary > 45000)    

hist <- ggplot(data=emp_hist, aes(x= salary))

hist + 
  geom_histogram(color="grey", fill="lightgreen", alpha=0.7, binwidth = 5000) + 
  ggtitle("Title distribution in the employee data")+ 
  labs( x ="Salary(above 45000)", y = "Number of employees in the salary bracket") +
  theme_solarized_2(light = FALSE, base_size = 15, base_family = "serif")

#bar graph

bar <- ggplot(data = emp, aes(x = title, fill=gender))

bar + geom_bar() +
  theme_fivethirtyeight() +
  labs(x = "Job Position", y="Employee Count" , title = "Job Position by Gender") +
  scale_fill_manual(values = c("chartreuse4", "darkorange"))

# box_plots

box <- ggplot(data= emp, aes(x=title, y = salary))

box + geom_boxplot( outlier.colour = "red", outlier.shape = 4) +
  labs(title="Salary distribution", x="Position",y="Salary") +
  geom_jitter(aes(width = 0.1, color=gender)) +
  theme(axis.text.x = element_text(angle = 90, hjust = 1))

#scatter

scatter <- ggplot(data=emp, aes(x= birth_date, y=salary))
scatter + geom_point(aes(color=title)) 
# + stat_smooth() + stat_density2d()

emp


