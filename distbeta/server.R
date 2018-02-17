

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
  output$distPlot <- renderPlot({
    

    fb=function(x,media,desviacion){
      y=(1/beta((media*(1-desviacion^2))/desviacion^2,(1-media)*(1-desviacion^2)/desviacion^2))*(x^(((media*(1-desviacion^2))/desviacion^2)-1))*((1-x)^((1-media)*((1-desviacion^2)/desviacion^2)-1))
      return(y)
      }
    curve(fb(x, media = input$miu, desviacion = input$sigma),ylab = "Densidad") 
  
  })
  
  output$distPlot1 <- renderPlot({

    a=(input$miu*(1-input$sigma^2))/input$sigma^2
    b=(1-input$miu)*(1-input$sigma^2)/input$sigma^2
    curve(dbeta(x, shape1 = a, shape2 = b),ylab = "Densidad") 
  
  })
  
  output$alfbet <- renderText({
    a =(input$miu*(1-input$sigma^2))/input$sigma^2
    b =(1-input$miu)*(1-input$sigma^2)/input$sigma^2

    paste(c("Para esta configuracion Alpha = ", a,
            " y Beta =", b))
  })
  
})
