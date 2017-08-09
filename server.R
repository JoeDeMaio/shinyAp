library(shiny)
library(plotrix)

shinyServer(function(input, output) {
  output$ellipsePlot <- renderPlot({
    a <- input$a[1]
    b <- input$b[1]
    p <- pi *(3 * (a + b) - sqrt((3*a + b)*(a + 3*b)))
    plot(c(0,20), c(0,10), type="n", main="The Arch", xlab = "Horizontal Axis",
         ylab = "Verticle Axis")
      draw.ellipse(10, 0, a, b, 
        segment = c(0, 180), nv = 200, lwd = 3, border ="blue")
    output$perim <- renderText(paste("p/2 = ", round(p/2, 2)))
                
  })
  
})