# accessing spatial data

library(sf); library(tidyverse)

plot <- read.csv('tree_main_census/data/census-csv-files/scbi.stem3.csv')
serc <- st_read('spatial_data/shapefiles/20m_grid.shp')
serc.df <- as.data.frame(serc)

serc.df.short <- serc.df %>% 
  select(PLOT,STAKE_X, STAKE_Y) 
names(serc.df.short) <-  c('quadrat','x','y')
write.csv(serc.df.short, 'quadrat.coords.csv',quote=F)

