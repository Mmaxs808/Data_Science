#Making the Type graph
typeData <- Pokemon %>%
  select(Primary_Type)


type_graph <- ggplot(typeData, aes(x=reorder(Primary_Type, Primary_Type, function(x)-length(x)), fill=Primary_Type)) +
  geom_bar(color = "black") +
  xlab("Primary Type") +
  ylab("Number of Pokemon") +
  theme(axis.text.x = element_text(angle=90),
        legend.position = "none")

type_graph
