
# Prelim ------------------------------------------------------------------
rm(list = ls())

library(pacman)
p_load(tidyverse,readxl,writexl,haven)


# Cargo los datos necesarios ----------------------------------------------

# Elecciones 2023
# Cargo la información electoral
elec23 <- read_xlsx("datos/202307_elec_congr_municipios.xlsx",
                    # Especificando el rango de celdas
                    range = "A6:BT8137") |> 
  # Cambiar el nombre de las variables
  rename(
    CA = `Nombre de Comunidad`,
    IdProv = `Código de Provincia`,
    Prov = `Nombre de Provincia`,
    IdMuni = `Código de Municipio`,
    Muni = `Nombre de Municipio`,
    Pob = Población,
    Mesas = `Número de mesas`,
    Censo = `Total censo electoral`,
    Votantes = `Total votantes`,
    VotVal = `Votos válidos`,
    VotCand = `Votos a candidaturas`,
    VotBl = `Votos en blanco`,
    VotNul = `Votos nulos`,
    JxCAT = `JxCAT - JUNTS`,
    BILDU = `EH Bildu`,
    PNV = `EAJ-PNV`,
    BNG = B.N.G.,
    UPN = U.P.N.
  ) %>% 
  # Necesito crear un Id único de municipio
  mutate(IdProv_c = str_pad(IdProv,width = 2,pad ="0"),
         IdMuni_c = str_pad(IdMuni,width = 3,pad ="0"),
         IdINE = paste0(IdProv_c,IdMuni_c))

# Cargar datos electorales de 2019
elec19 <- read_xlsx("datos/resultados_muni_congreso2019.xlsx")

# Cargar datos demografia 2019
demo19 <- read_dta("datos/datos_muni2019.dta")

# Cargar datos demografia 2023
demo23 <- read_rds("datos/demografia23.rds")

### 2. Combino resultados electorales con demografia

elec19 <- elec19 %>% 
  left_join(demo19,by = "IdINE")

elec23 <- elec23 %>% 
  left_join(demo23,by = "IdINE")

### 3. Verificamos que los nombres de las variables sean iguales

setdiff(names(elec19),names(elec23))

setdiff(names(elec23),names(elec19))

# Cambio nombres de variables que son distintas en ambos marcos de datos

elec19 <- elec19 %>% 
  rename(IdProv = IdProv.x,
         Prov = Prov.x,
         IdMuni = IdMuni.x)

elec23 <- elec23 %>% 
  rename(CUP = "CUP-PR")

# Se debería revisar todo y cambiar todos los nombres de variables
# que dan la misma información


#### 4. Identificamos cada una de las observaciones según las elecciones
elec19 <- elec19 %>% 
  mutate(year = 2019)

elec23 <- elec23 %>% 
  mutate(year = 2023)

### 5. Combinamos bases de datos

elec <- elec19 %>% 
  bind_rows(elec23)


# Regresiones -------------------------------------------------------------

elec <- elec %>% 
  mutate(part = Votantes/Censo*100,
         PP_por = PP/Votantes*100,
         paro_por = Paro/Pob.x*100,
         univ_por = EstUniv/Pob.x*100)

hist(elec$univ_por)

# Modelo bivariante
m1 <- lm(data = elec,formula = PP_por ~ paro_por)

summary(m1)

# Modelo multivariante
m2 <- lm(data = elec,formula = PP_por ~ paro_por + univ_por)

summary(m2)


# Efectos heterogéneos ----------------------------------------------------


