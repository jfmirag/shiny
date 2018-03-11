library(shiny)


shinyUI(fluidPage(
  
 
  titlePanel("Distribucion beta"),
  
  sidebarLayout(
    sidebarPanel(
       sliderInput("miu", 
                   HTML("Ingrese la media &mu;:"), 
                   min = 0, max = 1, value = 0.5),
       sliderInput("sigma", 
                   HTML("Ingrese la desviacion &sigma;:"), 
                   min = 0, max = 1, value = 0.5)
    ),
    
    
    mainPanel(
       h3("Densidad distribucion Beta", align = "center"),
       plotOutput("distPlot"),
       verbatimTextOutput("alfbet")
    )
  )
))
