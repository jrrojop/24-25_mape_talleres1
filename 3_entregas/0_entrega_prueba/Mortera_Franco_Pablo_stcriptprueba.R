
update.packages(ask = F)
install.packages ("devtools")
library ("devtools")
install.packages("pacman")

install.packages("fastmap")

library (pacman)
devtools::install_github("ddauber/r4np")

p_load ("r4np")
#Creamos las carpetas en el directorio de trabajo
create_project_folder()

#Creamos un objeto numérico
pepito <- 3

#Crear una función-----------------

#Una funcion que retorne el valor de la mitad del numero

funcionmitad <- function(x){
  y <- x/2
  return(y)
}

funcionmitad(pepito)


funcionelevado <- function(x){
  y <- x^2
  return(y)
}

funcionelevado (3)

#Con dos argumentos

funcionpotencia <- function(x,y){
  
  potencia <- x^y
  return(potencia)
  
}
  
funcionpotencia(pepito,4)

#Con texto "El resultado de la potencia es"

funcionpotenciatexto <- function(x,y){
  
  potencia <- x^y
  z <- "El resultado de la potencia es: "
  texto <- paste0(z,potencia)

  return(texto)
  
}

funcionpotenciatexto(pepito,4)

#Tydiverse-----------------------

p_load(tidyverse)

#Uso de pipes
#Media de los valores 1,5 y 8 redondeados a 2 decimales. Hay que hacer antes el vector con los numeros

numeros <- c(1,5,8)

media <- mean(numeros) %>% round(2)

#Ahora solo usando pipes

mean(c(1,5,8))%>% round(2)

#Más limpio

c(1,5,8) #Vector numerico
  %>% mean() #Calculo la media
  %>% round(2) #Redondeo









