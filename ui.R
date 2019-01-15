
library(shiny)

shinyUI(fluidPage(
  
  # Application title
  titlePanel("Final Project 1-12-2019 Ping Hu"),
  # Sidebar with a slider input for number of bins 
  pageWithSidebar(
    headerPanel('Iris k-means clustering, please choose parameter below to see the resulted clusters'),
    sidebarPanel(
      selectInput('xcol', 'X Variable', names(iris)),
      selectInput('ycol', 'Y Variable', names(iris),
                  selected=names(iris)[[2]]),
      numericInput('clusters', 'Cluster count', 3,
                   min = 1, max = 9)
    ),
    mainPanel(
      plotOutput('plot1')
    )
  )
))


