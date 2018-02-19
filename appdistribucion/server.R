
library(shiny)

shinyServer(function(input, output) {
   
  output$distPlot <- renderPlot({

    curve(dgamma(x, shape=input$lambda, rate = input$escala, log = F))
    
    
  })
  
})

