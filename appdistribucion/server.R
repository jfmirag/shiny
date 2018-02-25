
library(shiny)

shinyServer(function(input, output) {
   
  output$distPlot <- renderPlot({

    curve(dgamma(x, shape=input$lambda, scale = input$escala, log = F),to=input$maxx,
          from=0, ylab="Densidad", las=1, lwd=3, col="red")
    
    
  })
  
})

