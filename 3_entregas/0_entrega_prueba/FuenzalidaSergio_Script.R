# Preliminares ------------------------------------------------------------
# lo anterior con ctrl + shift + r
library(pacman)
install.packages("devtools")
devtools::install_github("ddauber/r4np")

library(pacman)
p_load("r4np")

#creamos las carpetas en directorio de trabajo
create_project_folder()


# Crear una función -------------------------------------------------------

# una función que retorne el valor de lamitad de un número

funcionmitad <- function(x){
  y <- x/2
  return(y)
}

funcionmitad(500)

#probamos otra función

f_quintuple <- function(x){
  y <- x*5
  return(y)
}

f_quintuple(5)

#funcion con 2 arguementos
funcionpotencia <- function(x,y){
  potencia <- x^y
  return(potencia)
}

funcionpotencia(3,4)

#Función con 3 argumentos
#"el reusltado de la potencia es:"

funciontexto <- function(x,y){
  potencia <- x^y
  z <- "El resultado de la potencia es: "
  texto <- paste0(z,potencia)
  return(texto)
}

funciontexto(3,4)


# Tidyverse ---------------------------------------------------------------
p_load(tidyverse)
#uso de pipe
#media de los valores 1, 5 y 8 redondeado a 2 decimales

numeros <- c(1,5,8)
media <- mean(numeros) %>%
  round(2)

#ahora de verdad, solo usando pipies
mean(c(1,5,8)) %>% round(2)

#más limpio
c(1,5,8) %>% mean() %>% round(2)











