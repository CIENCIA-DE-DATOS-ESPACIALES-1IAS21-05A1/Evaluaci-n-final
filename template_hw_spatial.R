rm(list = ls())
#setwd("")

gpklink="https://github.com/CIENCIA-DE-DATOS-ESPACIALES-1IAS21-05A1/Evaluaci-n-final/raw/main"

library(sf)

# Leer los mapas exportados desde Colab
map1=read_sf(paste0(gpklink,"/LISA_KNN.gpkg"))
map2=read_sf(paste0(gpklink,"/LISA_Perimeter.gpkg"))
map3=read_sf(paste0(gpklink,"/LISA_Queen.gpkg"))
map4=read_sf(paste0(gpklink,"/LISA_Rook.gpkg"))

library(ggplot2)

map1gg=ggplot()+
  theme_bw()+
  geom_sf(data=map1,aes(fill=LISA),color="grey90")
map1gg

map2gg=ggplot()+
  theme_bw()+
  geom_sf(data=map2,aes(fill=LISA),color="grey90")
map2gg

map3gg=ggplot()+
  theme_bw()+
  geom_sf(data=map3,aes(fill=LISA),color="grey90")
map3gg

map4gg=ggplot()+
  theme_bw()+
  geom_sf(data=map4,aes(fill=LISA),color="grey90")
map4gg

# Guardar los mapas para el dashboard
saveRDS(map1gg,file="map1.rds")
saveRDS(map2gg,file="map2.rds")
saveRDS(map3gg,file="map3.rds")
saveRDS(map4gg,file="map4.rds")