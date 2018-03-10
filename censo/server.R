
library(shiny)
library(maps)
library(mapproj)
source("helpers.R")
counties <- readRDS("counties.rds")
server <- function(input, output) {
  output$map <- renderPlot({
    data <- switch(input$var, 
                   "Percent White" = counties$white,
                   "Percent Black" = counties$black,
                   "Percent Hispanic" = counties$hispanic,
                   "Percent Asian" = counties$asian)
    percent_map(var = data,"darkgreen", "% White",min = input$range[1],max = input$range[2])
  })
}
