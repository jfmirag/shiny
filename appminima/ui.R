library(shiny)
shinyUI(fluidPage(
  titlePanel("My Shiny App"),
  sidebarLayout(
    sidebarPanel(
      img(src="http://goo.gl/pbajEu",height = 200, width = 320)
    ),
    mainPanel(
      img(src="http://goo.gl/w1VNsL", height = 300, width = 520)
    )
  )
))