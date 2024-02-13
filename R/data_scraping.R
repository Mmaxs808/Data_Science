list.of.packages <- c("ggplot2", "tidyverse", "reshape2")
new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
if(length(new.packages)) install.packages(new.packages)

library(tidyverse)
library(ggplot2)

#Reading in Data
Pokemon <- read.csv("data/Pokemon.csv") %>%
  mutate(Legendary = as.factor(Legendary),
         Name = as.factor(Name))

colnames(Pokemon)[1] <- "Pokedex_Number"
colnames(Pokemon)[3:4] <- c("Primary_Type", "Secondary_Type")
colnames(Pokemon)[9:10] <- c("Sp_Atk", "Sp_Def")

usethis::use_data(Pokemon, overwrite = TRUE)
