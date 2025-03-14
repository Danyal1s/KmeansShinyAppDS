library (shiny)
library(devtools)
  devtools::document()
library(roxygen2)
library(KmeansRpackageDS)

ui <- fluidPage(

  # Put a titlePanel here
  titlePanel("k-means clustering"),

  sidebarLayout(
    # Sidebar. Put your inputs inside the sidebarPanel
    sidebarPanel(
      selectInput('xcol', 'X Variable', names(iris)),
      selectInput('ycol', 'Y Variable', names(iris),
                  selected=names(iris)[[2]]),
      numericInput('clusters', 'Cluster count', 3,
                   min = 1, max = 9)
    ),

    # Main panel. put your output plot here
    mainPanel(
      plotOutput('plot1')
    )
  )
)

server <- function(input, output, session) {

  selectedData <- reactive({
    iris[, c(input$xcol, input$ycol)]
  })

  clusters <- reactive({my_clusters(selectedData(), input$clusters)})

  output$plot1 <- renderPlot ({
    palette(c("#E41A1C", "#377EB8", "#4DAF4A", "#984EA3",
              "#FF7F00", "#FFFF33", "#A65628", "#F781BF", "#999999"))
    par(mar = c(5.1, 4.1, 0, 1))
    plot_my_cluster(selectedData(),clusters())
  })

}

shinyApp(ui = ui, server = server)
