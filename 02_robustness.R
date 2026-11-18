library(tidyverse); library(broom)
states <- read_csv("data/states.csv")

no_dc <- filter(states, state != "DC") #filter out DC
m_all <- lm(auto_delinq ~ unemp + income_k, data = states)
m_main <- lm(auto_delinq ~ unemp + income_k, data = no_dc)
install.packages("modelsummary")
modelsummary::modelsummary(list("All 51" = m_all, "No DC (main)" = m_main)) #compare regression with and w/o DC

# Dropping DC keeps both coefficients' signs and significance.
# Unemployment effect roughly halves (1.14 to 0.59)
# Income effect strengthens (0.041 to -0.059)

# Our main model omits DC because it compares a single urban city to entire states. It inflated unemployment's slope

plot(m_main, which = 1)
lmtest::bptest(m_main)

no_dc$state[c(10, 20, 37)]

##
library(sandwich)

lmtest::coeftest(m_main, vcov = sandwich::vcovHC(m_main, type = "HC1"))