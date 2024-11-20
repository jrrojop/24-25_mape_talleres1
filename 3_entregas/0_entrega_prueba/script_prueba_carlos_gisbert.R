# Preliminares ------------------------------------------------------------
library(pacman)
library(devtools)
library(usethis)
devtools::install_github("ddauber/r4np")
p_load("r4np")
create_project_folder()
#crear objeto numerico
#nombre <- valor
pepito <- 3

#crear una función 
#una función que retorne el valor de la mitad del número 

funcionmitad <- function(x) {
  y <- x/2
  return(y)
}

#calculamos la mitad de pepito
funcionmitad(pepito)

#probamos otra función 
funcionpotencia <- function(x,y){
  potencia <- x^y
  return(potencia) 
  }

funcionpotencia(y=4, x=pepito)

#Otra función, con 3 argumentos
#El resultado de la potencia es 

funciiontexto <- function(x,y){
  potencia <- x^y
  z <- "El resultado de la potencia es:"
  texto <- paste0(z,potencia)
  return(texto)
  }
  
funciiontexto(pepito,4)
p_load(tidyverse)

#Uso de pipe
#Media de los valores 1,5 y 8 redondeados a 2 decimales
numeros <- c(1,5,8)
media <- mean(numeros) %>%  round(2)

#Ahora solo usando pipes
mean(c(1,5,8))%>% round(2)

#Más limpio
c(1,5,8) %>% mean() %>% round (2)
