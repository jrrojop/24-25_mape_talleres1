# Preliminares ------------------------------------------------------------
# install.packages("pacman")
library(pacman)
# install.packages("devtools")
devtools::install_github("ddauber/r4np")
p_load("r4np")
create_project_folder()


# Funciones ---------------------------------------------------------------
funcionmitad <- function(x) {
  y <- x/2
  return(y)
}



funcionTexto <- function(x, y, z = "El resultado de la potencia es:") {
  potencia <- x^y
  return(paste(z, potencia))
}

funcionTexto(2,3)

mean(c(1,5,8)) |> round(2)

c(1,5,8) |> mean() |> round(2)


