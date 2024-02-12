library(reshape2)

#Making the stat data
stat_graph <- ggplot(data=melt(statData, id.vars="Generation"), aes(x=variable, y=value)) +
  geom_boxplot(aes(fill=variable)) +
  facet_wrap(vars(Generation)) +
  theme(axis.text.x = element_text(angle=90),
        legend.position = "none")

stat_graph
