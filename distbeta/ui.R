library(shiny)


shinyUI(fluidPage(
  
 
  titlePanel("Old Faithful Geyser Data"),
  
 
  sidebarLayout(
    sidebarPanel(
       sliderInput("miu", "Ingrese la media:", min = 0, max = 1, value = 0.5),
       sliderInput("sigma", "ingrese la desviacion:", min = 0, max = 1, value = 0.5)
    ),
    
    
    mainPanel(
       h3("Densidad distribucion Beta", align = "center"),
       plotOutput("distPlot"),
       plotOutput("distPlot1"),
       verbatimTextOutput("alfbet")
    )
  )
))
