##control+shift+r crea secciones

# Preliminares ------------------------------------------------------------
library(pacman)
install.packages("devtools")
devtools::install_github("ddauber/r4np")

p_load("r4np") ##nos aseguramos que todo el mundo cargue todos los paquetes

##crea carpetas raw_datam, tidy_data...
create_project_folder()

## alt+guión para poner <-


# Crear una función -------------------------------------------------------

 #control+shift+c para poner almohadilla
#Una función que retorne el valor de la mitad de un número

funcionmitad <- function(x){
  y <- x/2
  
  return (y)
  
} 
 pepito <- 3

funcionmitad(pepito)


funcionpotencia <- function(x,y){
  
  potencia <- x^y
  z <- "El resultado de la potencia es:"
  texto <- paste0(z,potencia)
 return(texto) 
}


funcionpotencia(3,2)

# crtl+shift+m para hacer pipe:%>% 


# Tidyverse ---------------------------------------------------------------
p_load(tidyverse)
#Uso del pipe
#Media de los valores 1,5 y 8 redondeados a 2 decimales
numeros <- c(1,5,8)
media_redondeo <- mean(numeros) %>% round(2)

print(media_redondeo)

#Ahora de verdad, solo usando los pipes
mean(c(1,5,8)) %>% round(2)
#Más limpio
c(1,5,8) %>% mean() %>% round(2)





