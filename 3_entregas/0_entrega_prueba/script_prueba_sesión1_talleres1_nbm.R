
# Preliminares ------------------------------------------------------------

library(pacman)
p_load("r4np")
create_project_folder()


# Crear una función -------------------------------------------------------

# Una función que retorne el valor de la mitad de un número

pepito <- 3

funcionmitad <- function (x){
  y <- x/2
  return(y)
}
 
funcionmitad(5555)

# Otra función con 2 argumentos

funcionpotencia <- function(x,y){
  potencia <- x^y
  return(potencia)
}

# Función para crear texto con 3 argumentos
# "el resultado de la potencia es:"

funciontexto <- function(x,y,z){
  potencia <- x^y
  z <-  "el resultado de la potencia es:"
  texto <- paste0(z,potencia)
  return(texto)
}

funciontexto(pepito,4, "el resultado de la potencia es:") 


# Tidyverse ---------------------------------------------------------------
p_load(tidyverse)

# Uso de pipe
# Media de los valores 1, 5, y 8 redondeados a 2 decimales

numeros <- c(1,5,8)

c(1,5,8) %>% mean() %>% round(2)
