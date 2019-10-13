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


Sys.setlocale("LC_ALL", "C")

building_viz <- read.csv("BuildingVizNarva.csv", header=TRUE)


# Define UI for application
ui <- fluidPage(
    
    # Application title
    #titlePanel("Ruutli 22"),
    
    
    leafletOutput("mymap")
    
    
)

# Define server logic required to draw a histogram
server <- function(input, output) {
    
    output$mymap <- renderLeaflet({
        leaflet() %>%
            addProviderTiles(providers$Stamen.Toner) %>%
            addMarkers(data = building_viz,lat = ~lat, lng = ~lon, popup= ~paste(
                "Address:", lahiaadress,"<br>", 
                "Floors:", max_korruste_arv,"<br>", 
                "Rooms:", tubade_arv,"<br>", 
                "Apartments:",korterite_arv ,"<br>",
                "Elevators:",lift ,"<br>",
                "Living area:",elamispind ,"<br>",
                "Dwelling area:",eluruumi_pind ,"<br>",
                "Year of construction:",esmane_kasutus ,"<br>"
            )) 
        
        })
    
}
# Run the application 
shinyApp(ui = ui, server = server)
