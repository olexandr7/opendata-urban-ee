#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(leaflet)

pal2 <- colorFactor(c("orange", "red"), domain = c("ENERGIAKL_C", "ENERGIAKL_G"))

Sys.setlocale("LC_ALL", "C")

CrimesFlatNarva <- read.csv("CrimesFlatNarva.csv", header=TRUE)
NarvaEnergyClassFlats <- read.csv("NarvaEnergyClassFlats.csv", header=TRUE)



# Define UI for application
ui <- fluidPage(

    # Application title
    titlePanel("Narva housing - demo vizualization"),
    
    mainPanel(
        h6("Buildings with energoefficiency class 1994-2019"),
        h6("Crimes against property 2018-2019")
    ),

    leafletOutput("mymap")
    
    
)

# Define server logic required to draw a histogram
server <- function(input, output) {

    output$mymap <- renderLeaflet({
        leaflet() %>%
            addProviderTiles(providers$Esri.WorldTopoMap) %>%
            addCircleMarkers(data = CrimesFlatNarva, lat = ~Coord_X, lng = ~Coord_Y, popup = ~Kahjusumma, radius=20) %>%
            addMarkers(data = NarvaEnergyClassFlats, lat = ~lat, lng = ~lon, popup = ~energia_klass)
    })
    
    
}

# Run the application 
shinyApp(ui = ui, server = server)
