rm(list = ls())
#setwd("")

gpklink="https://github.com/CIENCIA-DE-DATOS-ESPACIALES-1IAS21-05A1/Evaluaci-n-final/raw/main/seattle.gpkg"

library(sf)
library(ggplot2)
library(RColorBrewer)

# Leer las capas del GeoPackage
map1 = read_sf(gpklink, layer = "Queen")
map2 = read_sf(gpklink, layer = "Rook")
map3 = read_sf(gpklink, layer = "Knn")
map4 = read_sf(gpklink, layer = "Perimeter")

# Mapa Queen
map1gg =
  ggplot()+
  theme_bw()+
  geom_sf(
    data=map1,
    aes(fill=LISA),
    color="grey40",
    linewidth=0.15
  )+
  scale_fill_brewer(palette="PuOr")+
  labs(title="LISA - Queen",fill="LISA")

map1gg

# Mapa Rook
map2gg =
  ggplot()+
  theme_bw()+
  geom_sf(
    data=map2,
    aes(fill=LISA),
    color="grey40",
    linewidth=0.15
  )+
  scale_fill_brewer(palette="PuOr")+
  labs(title="LISA - Rook",fill="LISA")

map2gg

# Mapa Knn
map3gg =
  ggplot()+
  theme_bw()+
  geom_sf(
    data=map3,
    aes(fill=LISA),
    color="grey40",
    linewidth=0.15
  )+
  scale_fill_brewer(palette="PuOr")+
  labs(title="LISA - Knn",fill="LISA")

map3gg

# Mapa Perimeter
map4gg =
  ggplot()+
  theme_bw()+
  geom_sf(
    data=map4,
    aes(fill=LISA),
    color="grey40",
    linewidth=0.15
  )+
  scale_fill_brewer(palette="PuOr")+
  labs(title="LISA - Perimeter",fill="LISA")

map4gg

# Guardar los objetos
saveRDS(map1gg,"map1.rds")
saveRDS(map2gg,"map2.rds")
saveRDS(map3gg,"map3.rds")
saveRDS(map4gg,"map4.rds")