library(gamlss)
library(shiny)

shinyServer(
  function(input, output) {
      output$betaDensity <- renderPlot({
        curve(dBE(x, mu=input$mu, sigma =input$sigma),
              from=0.000001, to=0.999999, ylab="Densidad",
              las=1, lwd=3, col="deepskyblue3")
  
        title(paste0("densidad de una distribucion beta con mu =",input$mu," and sigma =",input$sigma," como densidad"))
        grid()
    })
  }
  
)