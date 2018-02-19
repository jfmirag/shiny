
library(shiny)

shinyUI(fluidPage(

  titlePanel("Distribucion"),

  sidebarLayout(
    sidebarPanel(
       numericInput("lambda", "l", value=3, min=0, max=10, step=0.1),
       numericInput("escala", "k", value=0.5, min=0, max=10, step=0.1),
       sliderInput("maxx", "Maximo valor de x:", min = 0, max = 50, value = 10, step = 1)
    ),

    mainPanel(
       plotOutput("distPlot")
    )
  )
))
