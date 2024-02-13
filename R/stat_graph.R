library(reshape2)

statData <- Pokemon %>%
  select(HP, Attack, Defense, Sp_Atk, Sp_Def, Speed, Generation)

#Making the stat data
stat_graph <- ggplot(data=melt(statData, id.vars="Generation"), aes(x=variable, y=value)) +
  geom_boxplot(aes(fill=variable)) +
  facet_wrap(vars(Generation)) +
  xlab("Stat") +
  ylab("Value") +
  theme(axis.text.x = element_text(angle=90),
        legend.position = "none")

stat_graph
