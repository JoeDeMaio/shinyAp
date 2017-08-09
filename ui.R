
library(shiny)
library(plotrix)
library(devtools)
shinyUI(fluidPage(
  withMathJax(),
  titlePanel("Ellipse Problem"),
  sidebarLayout(
    sidebarPanel(
      p("The parimeter of an ellipse can not be determined exactly,
        it must be approximated.  The purpose of this ap is to calculate 
        the lenght of an arch formed from half an ellipse"),
       sliderInput("a",
                   "Horizontal Axis",
                   min = 1,
                   max = 10,
                   value = 5,
                   step = 0.1),
       sliderInput("b",
                   "Vertical Axis",
                   min = 1,
                   max = 10,
                   value = 5,
                   step = 0.1)
    ),
    mainPanel(
p("These sliders calclate the length of the arch. Move the sliders to input 
  the horizontal and axes of the ellipse." ),
        
        includeMarkdown("Ramanujan.Rmd"),
        
p("The lenght of the arch is half of the perimeter of the ellipse (p/2)."), 

        textOutput("perim"),
        plotOutput("ellipsePlot")


    )
  )
))
