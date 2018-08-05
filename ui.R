#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a Histogram of MPG
shinyUI(fluidPage(
  
  # Application title
  titlePanel("MTCars Data - Regression analysis of different dimensions of the Dataset"),
  
  # Sidebar with a slider input for value of MPG  
  sidebarLayout(
    sidebarPanel(
      
      selectInput("variable2", "Select the FIRST dimension to carry out linear regression against:",
                  choices = c("Miles per Gallon" = "mpg",
                              "Horse Power" = "hp"),
                  selected = "mpg"),
      
      selectInput("variable1", "Select the second dimension to for the linear regression:",
                  choices = c("Cylinders" = "cyl",
                              "Transmission" = "am",
                              "Gears" = "gear"),
                  selected = "cyl"),
      
      checkboxInput("Abline", "Draw AB Line", TRUE)
   
     
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
       plotOutput("distPlot")
    )
  )
))
