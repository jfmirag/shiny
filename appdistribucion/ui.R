
library(shiny)

shinyUI(fluidPage(

  titlePanel("Distribucion"),

  sidebarLayout(
    sidebarPanel(
      withMathJax(),
       helpText('An irrational number \\(\\sqrt{2}\\)
           and a fraction $$1-\\frac{1}{2}$$'),
       numericInput("lambda", "l", value=1.5, min=0, max=50, step=0.1),
       numericInput("escala", "k", value=1, min=0, max=50, step=0.1),
       sliderInput("maxx", "Maximo valor de x:", min = 0, max = 150, value = 10, step = 1)
    ),

    mainPanel(
       plotOutput("distPlot")
    )
  )
))
