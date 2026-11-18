library(tidyverse)
states <- read_csv("C:/Users/Isaac/OneDrive/Desktop/Dev/r Development/project2/states.csv")
glimpse(states)

library(broom)

m1 <- lm(auto_delinq ~ unemp, data = states) #regression unemployment on delinq
tidy(m1)
glance(m1)

m2 <- lm(auto_delinq ~ unemp + income_k, data = states) #regression added income_k
tidy(m2)
glance(m2)

cor(states$unemp, states$income_k)

m3 <- lm(auto_delinq ~ unemp + income_k + auto_debt_pc, data = states) #regression add debt_pc
tidy(m3)
glance(m3)

#VIF check for multicollinearity
library(car)
vif(m3)
#unemp     income_k auto_debt_pc 
#1.073630     1.346526     1.360311 
vif(m2)
#unemp income_k 
#1.048529 1.048529 

states_nodc <- states |> filter(state != "DC")
m2_nodc <- lm(auto_delinq ~ unemp + income_k, data = states_nodc)
tidy(m2_nodc)
glance(m2_nodc)

tidy(m2)
glance(m2)

