
library(polAr)
library(tidyverse)

arg <- get_election_data("arg",	"presi",	"gral",	2003)
entrerios <- arg %>%
  filter(name_prov == "ENTRE RIOS") %>%
  group_by(votos) %>% 
  mutate(total = sum(votos),
         votos_pct = round(votos / electores *100,2),
         posicion = )
