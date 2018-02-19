
library(shiny)

shinyServer(function(input, output) {
   
  output$distPlot <- renderPlot({

    curve(dgamma(x, shape=input$lambda, scale = input$escala, log = F),to=input$maxx,col="blue", type = "l")
    
    
  })
  
})

