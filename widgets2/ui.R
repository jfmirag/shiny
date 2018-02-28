
library(shiny)

shinyUI(fluidPage(
  

  titlePanel("censusvis"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
       helpText("crear un mapa demografico con informacion del censo del 2010"),
       selectInput("select", h3("Select box"), 
                  choices = list("Choice 1" = 1, "Choice 2" = 2,
                                 "Choice 3" = 3), selected = 1)),
       sliderInput("rango",
                   "Rango de interes:",
                   min = 1,
                   max = 100,
                   value = c(20,60)
    )
    
    # Show a plot of the generated distribution
    #mainPanel(
    #   plotOutput("distPlot")
    #)
  )
))
