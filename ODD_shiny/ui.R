
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel("Predict your delay"),

  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(

      sliderInput("temp", "temparature", min = 0, max = 35, value = 5),
      sliderInput("precipitation", label = "Percipitation", min = 0, max = 1, value = 5),
      sliderInput("humidity", "Humidity", min = 50, max = 100, value = 60),
      sliderInput("windspeed_max", "Windspeed", min = 0, max = 20, value = 10),
                  selectInput("vehicle_type", 
                  label = "means of transport",
                  choices = c("Bus", "Tram", "Trolley")),
      selectInput("weekday", 
                  label = "day of week",
                  choices = list(Sunday = 1,
                                 Monday = 2, 
                                 Tuesday = 3, 
                                 Wednesday = 4, 
                                 Thursday = 5, 
                                 Friday = "6", 
                                 Saturday = "7"))
      ),

    # Show a plot of the generated distribution
    mainPanel(
      textOutput("prediction")
      
    )
  )
))
