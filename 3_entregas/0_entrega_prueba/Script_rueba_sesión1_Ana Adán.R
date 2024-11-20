
# Preliminares ------------------------------------------------------------

library(pacman)
library(devtools)
p_load("r4np")
create_project_folder()

# PARA HACER LABELS: COMAND+MAYUSCULA+R
# CONTROL+MAYUSUCLA+C


# CREACIÓN DE FUNCIONES  --------------------------------------------------
# creamos un objeto numérico 
pepito<-3

# creamos una función que retorne el calor de la mitad 
funcionmitad<-function(x){
  y<-x/2
  return(y)
}

funcionmitad(182)

funcionsuma<-function(x,y){
  z<-x+y
  return(z)
}

funcionsuma(4,7)

funcionsuma(x=pepito,y=5)
# funciones con tres argumentos
funcionsuma2<-function(x,y){
  suma<-x+y
  z<-"El resultado es: "
  texto<-paste(z,suma)
  return(texto)
}

funcionsuma2(4,2)

# COMAND+MAYUSCULA+M
library(tidyverse)
media<-mean(numeros)%>% round(2)
numeros<-c(1.5,5,8)
media
media2<-mean(c(1.5,5,8))%>% round(2)
media2
# para que sea más limpio 
c(1.5,5,8) %>% #vector numérico
  mean() %>% #media
  round(2) #redondeo



