

  
require(gamlss)
library(shiny)

shinyUI(pageWithSidebar(
  headerPanel("Distribucion Beta"),
  sidebarPanel(
 
    sliderInput(inputId = "mu",
                label = HTML("Parametro &mu;<sup></sup>"),
                min = 0,
                max = 1,
                value = 0.5,
                step =0.1),
    
    
    sliderInput(inputId = "sigma",
                label = HTML("Parametro &sigma;<sup></sup>"),
                min = 0,
                max = 1,
                value = 0.5,
                step = 0.1)
 
  ),
  mainPanel(
    plotOutput('betaDensity')
  )
))
