library(leaflet)
tag.map.title <- tags$style(HTML("
  .leaflet-control.map-title { 
    transform: translate(-50%,20%);
    position: fixed !important;
    left: 50%;
    text-align: center;
    padding-left: 10px; 
    padding-right: 10px; 
    background: rgba(255,255,255,0.75);
    font-weight: bold;
    font-size: 28px;
  }
"))

title <- tags$div(
  tag.map.title, HTML("Jan 05, 2019")
)  

map_leaflet <- leaflet() %>%
  addTiles() %>%
  addControl(title, position = "topleft", className="map-title")

######Example 2 add date title to the quake data#######
data(quakes)

# Show first 20 rows from the `quakes` dataset
leaflet(data = quakes[1:20,]) %>% addTiles() %>%
  addMarkers(~long, ~lat, popup = ~as.character(mag), label = ~as.character(mag)) %>% 
  addControl(title, position = "topleft", className="map-title")

