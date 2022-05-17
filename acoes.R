library(tidyquant)
library(dplyr)
prices <- c(
  "BBDC4", "RENT3", "BRFS3", "BPAN4", "ELET3", "CCRO3",
  "GGBR4", "PRIO3", "MGLU3", "SULA11"
) %>%
  paste0(".SA") %>%
  tq_get(get = "stock.prices", from = " 2010-01-01") %>%
  mutate(symbol = sub(".SA", "",symbol))


write.table(prices, "prices.csv", sep = ",", row.names= FALSE)
prices <- read.csv("C:/Users/ALUNO/Documents/R/dashboard/prices.csv")%>%
  mutate(date = as.Date(date))


