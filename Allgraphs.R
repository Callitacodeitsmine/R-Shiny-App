Asia_TotalDeaths <- function(){
  library(ggplot2)
  
  Main_data = read.csv("worldometer_data.csv", header = TRUE, sep = ",")
  
  Filter_Asia_TotalDeaths <- Main_data[Main_data$Continent == "Asia", -3]
  
  gg <- data.frame(name=Filter_Asia_TotalDeaths$Country.Region,
                   value=Filter_Asia_TotalDeaths$TotalDeaths)
  
  g <-ggplot(gg, aes(x = name , y = value)) 
  g + geom_bar(stat = "identity", fill="#F70D1A") + theme(axis.text.x.bottom  = element_text(angle = 90))
  
}
Asia_TotalDeaths()

###########################################################################

Asia_TotalRecovered <- function(){
  library(ggplot2)
  
  Main_data = read.csv("worldometer_data.csv", header = TRUE, sep = ",")
  
  Filter_Asia_TotalRecovered <- Main_data[Main_data$Continent == "Asia", -3]
  
  gg <- data.frame(name=Filter_Asia_TotalRecovered$Country.Region,
                   value=Filter_Asia_TotalRecovered$TotalRecovered)
  
  g <-ggplot(gg, aes(x = name , y = value)) 
  g + geom_bar(stat = "identity", fill="#90EE90") + theme(axis.text.x.bottom  = element_text(angle = 90))
  
}
Asia_TotalRecovered()
###########################################################################

Asia_TotalCases <- function(){
  library(ggplot2)
  
  Main_data = read.csv("worldometer_data.csv", header = TRUE, sep = ",")
  
  Filter_Asia_TotalCases<- Main_data[Main_data$Continent == "Asia", -3]
  
  gg <- data.frame(name=Filter_Asia_TotalCases$Country.Region,
                   value=Filter_Asia_TotalCases$TotalCases)
  
  g <-ggplot(gg, aes(x = name , y = value)) 
  g + geom_bar(stat = "identity", fill="#FD1C03") + theme(axis.text.x.bottom  = element_text(angle = 90))
  
}
Asia_TotalCases()

###########################################################################

Europe_TotalDeaths <- function(){
  library(ggplot2)
  
  Main_data = read.csv("worldometer_data.csv", header = TRUE, sep = ",")
  
  Filter_Europe_TotalDeaths <- Main_data[Main_data$Continent == "Europe", -3]
  
  gg <- data.frame(name=Filter_Europe_TotalDeaths$Country.Region,
                   value=Filter_Europe_TotalDeaths$TotalDeaths)
  
  g <-ggplot(gg, aes(x = name , y = value)) 
  g + geom_bar(stat = "identity", fill="#F70D1A") + theme(axis.text.x.bottom  = element_text(angle = 90))
  
}
Europe_TotalDeaths()
###########################################################################

Europe_TotalRecovered <- function(){
  library(ggplot2)
  
  Main_data = read.csv("worldometer_data.csv", header = TRUE, sep = ",")
  
  Filter_Europe_TotalRecovered <- Main_data[Main_data$Continent == "Europe", -3]
  
  gg <- data.frame(name=Filter_Europe_TotalRecovered$Country.Region,
                   value=Filter_Europe_TotalRecovered$TotalRecovered)
  
  g <-ggplot(gg, aes(x = name , y = value)) 
  g + geom_bar(stat = "identity", fill="#90EE90") + theme(axis.text.x.bottom  = element_text(angle = 90))
  
}

###########################################################################

Europe_TotalCases <- function(){
  library(ggplot2)
  
  Main_data = read.csv("worldometer_data.csv", header = TRUE, sep = ",")
  
  Filter_Europe_TotalCases <- Main_data[Main_data$Continent == "Europe", -3]
  
  gg <- data.frame(name=Filter_Europe_TotalCases$Country.Region,
                   value=Filter_Europe_TotalCases$TotalCases)
  
  g <-ggplot(gg, aes(x = name , y = value)) 
  g + geom_bar(stat = "identity", fill="#FD1C03") + theme(axis.text.x.bottom  = element_text(angle = 90))
  
}
Europe_TotalCases()
###########################################################################

NAmerica_TotalDeaths <- function(){
  library(ggplot2)
  
  Main_data = read.csv("worldometer_data.csv", header = TRUE, sep = ",")
  
  Filter_NAmerica_TotalDeaths <- Main_data[Main_data$Continent == "North America", -3]
  
  gg <- data.frame(name=Filter_NAmerica_TotalDeaths$Country.Region,
                   value=Filter_NAmerica_TotalDeaths$TotalDeaths)
  
  g <-ggplot(gg, aes(x = name , y = value)) 
  g + geom_bar(stat = "identity", fill="#F70D1A") + theme(axis.text.x.bottom  = element_text(angle = 90))
  
}
NAmerica_TotalDeaths()
###########################################################################

NAmerica_TotalRecovered <- function(){
  library(ggplot2)
  
  Main_data = read.csv("worldometer_data.csv", header = TRUE, sep = ",")
  
  Filter_NAmerica_TotalRecovered <- Main_data[Main_data$Continent == "North America", -3]
  
  gg <- data.frame(name=Filter_NAmerica_TotalRecovered$Country.Region,
                   value=Filter_NAmerica_TotalRecovered$TotalRecovered)
  
  g <-ggplot(gg, aes(x = name , y = value)) 
  g + geom_bar(stat = "identity", fill="#90EE90") + theme(axis.text.x.bottom  = element_text(angle = 90))
  
}
NAmerica_TotalRecovered()
###########################################################################

NAmerica_TotalCases <- function(){
  library(ggplot2)
  
  Main_data = read.csv("worldometer_data.csv", header = TRUE, sep = ",")
  
  Filter_NAmerica_TotalCases <- Main_data[Main_data$Continent == "North America", -3]
  
  gg <- data.frame(name=Filter_NAmerica_TotalCases$Country.Region,
                   value=Filter_NAmerica_TotalCases$TotalCases)
  
  g <-ggplot(gg, aes(x = name , y = value)) 
  g + geom_bar(stat = "identity", fill="#FD1C03") + theme(axis.text.x.bottom  = element_text(angle = 90))
  
}
###########################################################################

SAmerica_TotalDeaths <- function(){
  library(ggplot2)
  
  Main_data = read.csv("worldometer_data.csv", header = TRUE, sep = ",")
  
  Filter_SAmerica_TotalDeaths <- Main_data[Main_data$Continent == "South America", -3]
  
  gg <- data.frame(name=Filter_SAmerica_TotalDeaths$Country.Region,
                   value=Filter_SAmerica_TotalDeaths$TotalDeaths)
  
  g <-ggplot(gg, aes(x = name , y = value)) 
  g + geom_bar(stat = "identity", fill="#F70D1A") + theme(axis.text.x.bottom  = element_text(angle = 90))
  
}
SAmerica_TotalDeaths()
###########################################################################

SAmerica_TotalRecovered <- function(){
  library(ggplot2)
  
  Main_data = read.csv("worldometer_data.csv", header = TRUE, sep = ",")
  
  Filter_SAmerica_TotalRecovered <- Main_data[Main_data$Continent == "South America", -3]
  
  gg <- data.frame(name=Filter_SAmerica_TotalRecovered$Country.Region,
                   value=Filter_SAmerica_TotalRecovered$TotalRecovered)
  
  g <-ggplot(gg, aes(x = name , y = value)) 
  g + geom_bar(stat = "identity", fill="#90EE90") + theme(axis.text.x.bottom  = element_text(angle = 90))
  
}
SAmerica_TotalRecovered()
###########################################################################

SAmerica_TotalCases <- function(){
  library(ggplot2)
  
  Main_data = read.csv("worldometer_data.csv", header = TRUE, sep = ",")
  
  Filter_SAmerica_TotalCases <- Main_data[Main_data$Continent == "South America", -3]
  
  gg <- data.frame(name=Filter_SAmerica_TotalCases$Country.Region,
                   value=Filter_SAmerica_TotalCases$TotalCases)
  
  g <-ggplot(gg, aes(x = name , y = value)) 
  g + geom_bar(stat = "identity", fill="#FD1C03") + theme(axis.text.x.bottom  = element_text(angle = 90))
  
}
###########################################################################
Africa_TotalDeaths <- function(){
  library(ggplot2)
  
  Main_data = read.csv("worldometer_data.csv", header = TRUE, sep = ",")
  
  Filter_Africa_TotalDeaths <- Main_data[Main_data$Continent == "Africa", -3]
  
  gg <- data.frame(name=Filter_Africa_TotalDeaths$Country.Region,
                   value=Filter_Africa_TotalDeaths$TotalDeaths)
  
  g <-ggplot(gg, aes(x = name , y = value)) 
  g + geom_bar(stat = "identity", fill="#F70D1A") + theme(axis.text.x.bottom  = element_text(angle = 90))
  
}
Africa_TotalDeaths()
###########################################################################

Africa_TotalRecovered <- function(){
  library(ggplot2)
  
  Main_data = read.csv("worldometer_data.csv", header = TRUE, sep = ",")
  
  Filter_Africa_TotalRecovered <- Main_data[Main_data$Continent == "Africa", -3]
  
  gg <- data.frame(name=Filter_Africa_TotalRecovered$Country.Region,
                   value=Filter_Africa_TotalRecovered$TotalRecovered)
  
  g <-ggplot(gg, aes(x = name , y = value)) 
  g + geom_bar(stat = "identity", fill="#90EE90") + theme(axis.text.x.bottom  = element_text(angle = 90))
  
}
Africa_TotalRecovered()
###########################################################################

Africa_TotalCases <- function(){
  library(ggplot2)
  
  Main_data = read.csv("worldometer_data.csv", header = TRUE, sep = ",")
  
  Filter_Africa_TotalCases <- Main_data[Main_data$Continent == "Africa", -3]
  
  gg <- data.frame(name=Filter_Africa_TotalCases$Country.Region,
                   value=Filter_Africa_TotalCases$TotalCases)
  
  g <-ggplot(gg, aes(x = name , y = value)) 
  g + geom_bar(stat = "identity", fill="#FD1C03") + theme(axis.text.x.bottom  = element_text(angle = 90))
  
}
###########################################################################

Austraila_TotalDeaths <- function(){
  library(ggplot2)
  
  Main_data = read.csv("worldometer_data.csv", header = TRUE, sep = ",")
  
  Filter_Austraila_TotalDeaths <- Main_data[Main_data$Continent == "Australia/Oceania", -3]
  
  gg <- data.frame(name=Filter_Austraila_TotalDeaths$Country.Region,
                   value=Filter_Austraila_TotalDeaths$TotalDeaths)
  
  g <-ggplot(gg, aes(x = name , y = value)) 
  g + geom_bar(stat = "identity", fill="#F70D1A") + theme(axis.text.x.bottom  = element_text(angle = 90))
  
}
Austraila_TotalDeaths()
###########################################################################

Austraila_TotalRecovered <- function(){
  library(ggplot2)
  
  Main_data = read.csv("worldometer_data.csv", header = TRUE, sep = ",")
  
  Filter_Austraila_TotalRecovered <- Main_data[Main_data$Continent == "Australia/Oceania", -3]
  
  gg <- data.frame(name=Filter_Austraila_TotalRecovered$Country.Region,
                   value=Filter_Austraila_TotalRecovered$TotalRecovered)
  
  g <-ggplot(gg, aes(x = name , y = value)) 
  g + geom_bar(stat = "identity", fill="#90EE90") + theme(axis.text.x.bottom  = element_text(angle = 90))
  
}
Austraila_TotalRecovered()
###########################################################################

Austraila_TotalCases <- function(){
  library(ggplot2)
  
  Main_data = read.csv("worldometer_data.csv", header = TRUE, sep = ",")
  
  Filter_Austraila_TotalCases <- Main_data[Main_data$Continent == "Australia/Oceania", -3]
  
  gg <- data.frame(name=Filter_Austraila_TotalCases$Country.Region,
                   value=Filter_Austraila_TotalCases$TotalCases)
  
  g <-ggplot(gg, aes(x = name , y = value)) 
  g + geom_bar(stat = "identity", fill="#FD1C03") + theme(axis.text.x.bottom  = element_text(angle = 90))
  
}
###########################################################################