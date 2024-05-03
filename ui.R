library(shiny)
ui <- fluidPage(
  titlePanel("Trends by Continent"),
  
  # dropdown menu 
  selectInput("series", "Select Indicator:", choices = unique(data_long$Series.Name)),
  
  #sliderInput("year", "Select Year:", min = 2000, max = 2021, value = 2000, step = 1, sep = ''),
  
  #map
  leafletOutput("map", height = 500),
  
  
  plotOutput("trendGraph")
)