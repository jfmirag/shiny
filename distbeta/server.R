#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
  output$distPlot <- renderPlot({
    
    # generate bins based on input$bins from ui.R
    fb=function(x,media,desviacion){
      y=(1/beta((media*(1-desviacion^2))/desviacion^2,(1-media)*(1-desviacion^2)/desviacion^2))*(x^(((media*(1-desviacion^2))/desviacion^2)-1))*((1-x)^((1-media)*((1-desviacion^2)/desviacion^2)-1))
      return(y)
      }
    curve(fb(x, media = input$miu, desviacion = input$sigma)) 
    
    
    # draw the histogram with the specified number of bins
    
    
  })
  
})
