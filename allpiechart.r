Main_data = read.csv("worldometer_data.csv", header = TRUE, sep = ",")

Death_piechart <- function()
{
  Asia_piechart <- Main_data[Main_data$Continent == "Asia", -1]
  Europe_piechart <- Main_data[Main_data$Continent == "Europe", -1]
  Africa_piechart <- Main_data[Main_data$Continent == "Africa", -1]
  NAmerica_piechart <- Main_data[Main_data$Continent == "North America", -1]
  SAmerica_piechart <- Main_data[Main_data$Continent == "South America", -1]
  Australia_piechart <- Main_data[Main_data$Continent == "Australia/Oceania", -1]
  
  Asia_variable_Death <- mean(Asia_piechart$TotalDeaths, na.rm = TRUE)
  Europe_variable_Death <- mean(Europe_piechart$TotalDeaths, na.rm = TRUE)  
  Africa_variable_Death <- mean(Africa_piechart$TotalDeaths, na.rm = TRUE)
  NAmerica_variable_Death <- mean(NAmerica_piechart$TotalDeaths, na.rm = TRUE)
  SAmerica_variable_Death <- mean(SAmerica_piechart$TotalDeaths, na.rm = TRUE)
  Australia_variable_Death <- mean(Australia_piechart$TotalDeaths, na.rm = TRUE)
  
  Death <- c(Asia_variable_Death ,Europe_variable_Death ,Africa_variable_Death ,NAmerica_variable_Death ,SAmerica_variable_Death ,Australia_variable_Death)
  
  labels <- c("Asia" ,"Europe","Africa","North America", "South America", "Australia/Oceania" )
  
  colors = c("#9B59B6", "#3498DB", "#E75480", "#2ECC71", "#F39C12", "#D35400")
  
  piepercent<- round(100 * Death / sum(Death), 1)
  
  pie(Death, labels = piepercent,radius=1 ,main = "Total Deaths",
      col = colors, border = colors)
  legend("bottomleft", c("Asia" ,"Europe","Africa","North America", "South America", "Australia/Oceania" ),
         cex = 1.5, fill = colors)
}

Recover_piechart <- function()
{
  Asia_piechart <- Main_data[Main_data$Continent == "Asia", -1]
  Europe_piechart <- Main_data[Main_data$Continent == "Europe", -1]
  Africa_piechart <- Main_data[Main_data$Continent == "Africa", -1]
  NAmerica_piechart <- Main_data[Main_data$Continent == "North America", -1]
  SAmerica_piechart <- Main_data[Main_data$Continent == "South America", -1]
  Australia_piechart <- Main_data[Main_data$Continent == "Australia/Oceania", -1]
  
  Asia_variable_Recover <- mean(Asia_piechart$TotalRecovered, na.rm = TRUE)
  Europe_variable_Recover <- mean(Europe_piechart$TotalRecovered, na.rm = TRUE)  
  Africa_variable_Recover <- mean(Africa_piechart$TotalRecovered, na.rm = TRUE)
  NAmerica_variable_Recover <- mean(NAmerica_piechart$TotalRecovered, na.rm = TRUE)
  SAmerica_variable_Recover <- mean(SAmerica_piechart$TotalRecovered, na.rm = TRUE)
  Australia_variable_Recover <- mean(Australia_piechart$TotalRecovered, na.rm = TRUE)
  
  Recover <- c(Asia_variable_Recover ,Europe_variable_Recover ,Africa_variable_Recover  ,NAmerica_variable_Recover ,SAmerica_variable_Recover  ,Australia_variable_Recover)
  
  labels <- c("Asia" ,"Europe","Africa","North America", "South America", "Australia/Oceania" )
  
  piepercent<- round(100 * Recover / sum(Recover), 1)
  
  colors = c("#9B59B6", "#3498DB", "#E75480", "#2ECC71", "#F39C12", "#D35400")
  
  pie(Recover, labels = piepercent,radius=1 ,main = "Total Recovered",
      col = colors, border = colors)
  legend("bottomleft", c("Asia" ,"Europe","Africa","North America", "South America", "Australia/Oceania" ),
         cex = 1.5, fill = colors)
}

Case_piechart <- function()
{
  Asia_piechart <- Main_data[Main_data$Continent == "Asia", -1]
  Europe_piechart <- Main_data[Main_data$Continent == "Europe", -1]
  Africa_piechart <- Main_data[Main_data$Continent == "Africa", -1]
  NAmerica_piechart <- Main_data[Main_data$Continent == "North America", -1]
  SAmerica_piechart <- Main_data[Main_data$Continent == "South America", -1]
  Australia_piechart <- Main_data[Main_data$Continent == "Australia/Oceania", -1]
  
  Asia_variable_Case <- mean(Asia_piechart$TotalCases, na.rm = TRUE)
  Europe_variable_Case <- mean(Europe_piechart$TotalCases, na.rm = TRUE)  
  Africa_variable_Case <- mean(Africa_piechart$TotalCases, na.rm = TRUE)
  NAmerica_variable_Case <- mean(NAmerica_piechart$TotalCases, na.rm = TRUE)
  SAmerica_variable_Case <- mean(SAmerica_piechart$TotalCases, na.rm = TRUE)
  Australia_variable_Case <- mean(Australia_piechart$TotalCases, na.rm = TRUE)
  
  Case <- c(Asia_variable_Case ,Europe_variable_Case ,Africa_variable_Case ,NAmerica_variable_Case ,SAmerica_variable_Case ,Australia_variable_Case)
  
  
  labels <- c("Asia" ,"Europe","Africa","North America", "South America", "Australia/Oceania" )
  
  colors = c("#9B59B6", "#3498DB", "#E75480", "#2ECC71", "#F39C12", "#D35400")
  
  piepercent<- round(100 * Case / sum(Case), 1)
  
  pie(Case, labels = piepercent,radius=1 ,main = "Total Cases",
      col = colors, border = colors)
  legend("bottomleft", c("Asia" ,"Europe","Africa","North America", "South America", "Australia/Oceania" ),
         cex = 1.5, fill = colors)
}