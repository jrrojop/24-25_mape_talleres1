# Preliminares ------------------------------------------------------------
library(pacman)
install.packages("devtools")
devtools::install_github("ddauber/r4np")
library(devtools)

p_load("r4np")

#Creamos las carpetas en el directorio de trabajo

create_project_folder()




# Crear una función -------------------------------------------------------

# Una función que retorne el valor de la mitad de un número


funcionmitad <- function(x){
  y <- x/2
  return(y)
}

funcionmitad(10)


pepito <- 3


funcionEEUU <- function(x){
  y <- (x+1)
  return(y)
  
}

funcionEEUU(4)


# Otra función, con 3 argumentos, donde tenemos que devolver el resultado.

funciontexto <- function(x,y){
  potencia <- x^y
  z <- "El resultado de la potencia es: "
  texto <- paste0(z,potencia)
  return(texto)
  }

funciontexto(pepito,4)


# Tidyverse ---------------------------------------------------------------
p_load(tidyverse)

# Ahora quiere que calculemos una media; uso de PIPE
# Media de los valores 1, 5 y 8 redondeados a 2 decimales

numeros <- c(1,5,8)
media <- mean(numeros) %>% round(2)

# Esto que acabamos de hacer era creando vectores y objetos. Ahora con PIPES!

mean(c(1,5,8))%>% round(2)

# Más limpio

c(1,5,8) %>% mean() %>% round(2)
# entonces, primero hacemos la numérica, luego media y luego redondeo.
