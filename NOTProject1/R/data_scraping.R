library(tidyverse)
library(ggplot2)
library(dplyr)

#Reading in Data
data <- read.csv("data/Pokemon.csv") %>%
  mutate(Legendary = as.factor(Legendary),
         Name = as.factor(Name))

colnames(data)[1] <- "Pokedex_Number"
colnames(data)[3:4] <- c("Primary_Type", "Secondary_Type")
colnames(data)[9:10] <- c("Sp_Atk", "Sp_Def")

#Grabbing the data I need
typeData <- data %>%
  select(Primary_Type)

statData <- data %>%
  select(HP, Attack, Defense, Sp_Atk, Sp_Def, Speed, Generation)

