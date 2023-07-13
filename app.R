library(shiny)
library(dplyr)
library(ggplot2)
library(plotly)

Main_data <- read.csv("worldometer_data.csv", header = TRUE, sep = ",")

server <- function(input, output, session) {
  Main_data <- read.csv("worldometer_data.csv", header = TRUE, sep = ",")
  
  Avgerage_data <- read.csv("Covid - 19 average data.csv", header = TRUE, sep = ",")
  
  output$Calculation <- renderPlot({
    if (input$Calculation == "Total Cases") {
      Case_piechart()
    } else if (input$Calculation == "Total Recovered") {
      Recover_piechart()
    } else {
      Death_piechart()
    }
  })
  
  data <- reactive({
    Main_data
  })
  
  Avg <-reactive({
    Avgerage_data
  })
  
  output$scatterplot <- renderPlot({
    if (input$scatterplot == "Total Cases") {
      ggplot(
        Avg(),
        aes(x = Population , y = TotalCases, color = Continent)
      ) + geom_point()
    } else if (input$scatterplot == "Total Recovered") {
      ggplot(
        Avg(),
        aes(x = Population , y = TotalRecovered, color = Continent)
      ) + geom_point()
    } else {
      ggplot(
        Avg(),
        aes(x = Population , y = TotalDeaths, color = Continent)
      ) + geom_point()
    }
  })
  
  output$linediagram <- renderPlot({
    ggplot(
      data(),
      aes(x = Population)) + 
      geom_line(aes(y = TotalDeaths), color = "red") + 
      geom_line(aes(y = TotalRecovered), color = "orange") +
      geom_line(aes(y = TotalCases), color = "blue")+
      labs(title = "Line Diagram", x = "Population", y = "Total Cases")
  })
  
  output$BoxPlots <- renderPlot({
    if (input$BoxPlots == "Total Cases") {
      ggplot(
        data(),
        aes(x = Continent, y = TotalCases, fill = Continent)
      ) + geom_boxplot()
    } else if (input$BoxPlots == "Total Recovered") {
      ggplot(
        data(),
        aes(x = Continent, y = TotalRecovered, fill = Continent)
      ) + geom_boxplot()
    } else {
      ggplot(
        data(),
        aes(x = Continent, y = TotalDeaths, fill = Continent)
      ) + geom_boxplot()
    }
  })
  
  output$plot <- renderPlot({
    plot=plot(density(x))
  })
  
  output$table <- renderTable(
    data()
  )
  
  output$plot <- renderPlot({
    if (input$test == "Asia") {
      if (input$SalesRep == "Total Deaths") {
        Asia_TotalDeaths()
      } else if (input$SalesRep == "Total Recovered") {
        Asia_TotalRecovered()
      } else {
        Asia_TotalCases()
      }
    } else if (input$test == "Europe") {
      if (input$SalesRep == "Total Deaths") {
        Europe_TotalDeaths()
      } else if (input$SalesRep == "Total Recovered") {
        Europe_TotalRecovered()
      } else {
        Europe_TotalCases()
      }
    } else if (input$test == "North America") {
      if (input$SalesRep == "Total Deaths") {
        NAmerica_TotalDeaths()
      } else if (input$SalesRep == "Total Recovered") {
        NAmerica_TotalRecovered()
      } else {
        NAmerica_TotalCases()
      }
    } else if (input$test == "South America") {
      if (input$SalesRep == "Total Deaths") {
        SAmerica_TotalDeaths()
      } else if (input$SalesRep == "Total Recovered") {
        SAmerica_TotalRecovered()
      } else {
        SAmerica_TotalCases()
      }
    } else if (input$test == "Africa") {
      if (input$SalesRep == "Total Deaths") {
        Africa_TotalDeaths()
      } else if (input$SalesRep == "Total Recovered") {
        Africa_TotalRecovered()
      } else {
        Africa_TotalCases()
      }
    } else if (input$test == "Australia/Oceania") {
      if (input$SalesRep == "Total Deaths") {
        Austraila_TotalDeaths()
      } else if (input$SalesRep == "Total Recovered") {
        Austraila_TotalRecovered()
      } else {
        Austraila_TotalCases()
      }
    }
  })
}
ui <- fluidPage(
  h1("COIVD - 19 Data"),
  selectInput("test",
              label = "Continents", multiple = FALSE,
              choices = list("North America", "South America", "Asia", "Europe", "Africa", "Australia/Oceania"),
  ),
  selectInput(
    inputId = "SalesRep",
    label = "Select",
    selected = "Country",
    list("Total Deaths", "Total Recovered", "Total Cases")
  ),
  plotOutput("plot"),
  h3("Pie Chart of Continent Wise"),
  selectInput("Calculation",
              label = " ",
              choices = list("Total Deaths", "Total Recovered", "Total Cases"),
  ),
  plotOutput("Calculation"),
  
  h3("Scatter Plot"),
  selectInput("scatterplot",
              label = " ",
              choices = list("Total Deaths", "Total Recovered", "Total Cases"),
  ),
  plotOutput("scatterplot"),
  
  h3("Line Diagram"),
  plotOutput("linediagram"),
  
  h3("Box Plots"),
  selectInput("BoxPlots",
              label = " ",
              choices = list("Total Deaths", "Total Recovered", "Total Cases"),
  ),
  plotOutput("BoxPlots"),
  
  
  h3("Graph input"),
  tableOutput("table")
  
)
shinyApp(ui = ui, server = server)