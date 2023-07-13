library(shiny)
library(dplyr)
library(ggplot2)

Main_data = read.csv("worldometer_data.csv", header = TRUE, sep = ",")

name <- Main_data$Continent

value <- Main_data$Deaths.1M.pop

server <- function(input, output, session) {
  Main_data = read.csv("worldometer_data.csv", header = TRUE, sep = ",")
  
  data <- reactive({
    req(input$SalesRep)
    df <- Main_data %>% group_by(Continent, Country.Region) %>% summarise(Deaths.1M.pop = sum(Deaths.1M.pop))
  })
  output$table <- renderTable(
    {
      paste(Filter_Asia_TotalDeaths$name,Filter_Asia_TotalDeaths$value)
    }
  )
  
  output$plot <- renderPlot({
    if( input$test=="Asia") {
      if(input$SalesRep == "Total Deaths"){
        Asia_TotalDeaths()}
      else if (input$SalesRep == "Total Recovered"){
        Asia_TotalRecovered()
      }
      else {
        Asia_TotalCases()
      }
    }
    else if (input$test=="Europe") {
      if (input$SalesRep == "Total Deaths"){
        Europe_TotalDeaths()
      }
      else if (input$SalesRep == "Total Recovered"){
        Europe_TotalRecovered()
      }
      else{
        Europe_TotalCases()
      }
    }
    else if (input$test=="North America") {
      if (input$SalesRep == "Total Deaths"){
        NAmerica_TotalDeaths()
      }
      else if (input$SalesRep == "Total Recovered"){
        NAmerica_TotalRecovered()
      }
      else{
        NAmerica_TotalCases()
      }
    }
    else if(input$test=="South America") {
      if (input$SalesRep == "Total Deaths"){
        SAmerica_TotalDeaths()
      }
      else if (input$SalesRep == "Total Recovered"){
        SAmerica_TotalRecovered()
      }
      else{
        SAmerica_TotalCases()
      }
    }
    else if(input$test=="Africa") {
      if (input$SalesRep == "Total Deaths"){
        Africa_TotalDeaths()
      }
      else if (input$SalesRep == "Total Recovered"){
        Africa_TotalRecovered()
      }
      else{
        Africa_TotalCases()
      }
    }
    else if(input$test=="Australia/Oceania") {
      if (input$SalesRep == "Total Deaths"){
        Austraila_TotalDeaths()
      }
      else if (input$SalesRep == "Total Recovered"){
        Austraila_TotalRecovered()
      }
      else{
        Austraila_TotalCases()
      }
    }
    
  })
  
}
ui <- basicPage(
  h1("Plot"),
  selectInput("test",label="Test",multiple = FALSE, 
              choices=list("North America", "South America", "Asia", "Europe", "Africa", "Australia/Oceania" ), 
  ),
  selectInput(inputId = "SalesRep",
              label = "Choice",
              selected = "Country",
              list("Total Deaths","Total Recovered","Total Cases")),             
  
  #"North.America", "South.America", "Asis", "Europe", "Africa", "Austraila.Oceain" )),             
  plotOutput("plot"),
  
  tableOutput("table")
)
shinyApp(ui = ui, server = server)
