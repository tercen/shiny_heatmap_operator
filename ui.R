library(shiny)

shinyUI(fluidPage(
  
  titlePanel("Heatmap"),
  
  sidebarPanel(
    sliderInput("plotWidth", "Plot width (px)", 200, 2000, 500),
    sliderInput("plotHeight", "Plot height (px)", 200, 2000, 700),
    sliderInput("rowFontSize", "Row labels font size", 5, 20, 7, step = 1),
    checkboxInput("logScale", "Log scale", value = FALSE),
    "NB: for negative values, the opposite of the log transformed absolute is computed"
    
  ),
  
  mainPanel(
    uiOutput("reacOut")
  )
  
))
