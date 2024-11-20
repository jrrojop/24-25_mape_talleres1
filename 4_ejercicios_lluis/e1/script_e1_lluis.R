rm(list = ls())


library(pacman)
p_load(tidyverse,haven)

# Cargo los datos
df_nov <- read_dta("03_Datos_noviembre_2023.dta")


# Simplifico los partidos de recuerdo de voto
df_nov <- df_nov %>% 
  mutate(recuerdo_voto = case_when(p6==1 ~ "PSOE",
                                   p6==2 ~ "PP",
                                   p6==3 ~ "VOX",
                                   p6==4 ~ "SUMAR",
                                   p6>16 & p6<21 ~ "Abstención/Blanco",
                                   is.na(p6) ~ NA,
                                   T ~ "Otros"),
         intencion_voto = case_when(p3==1 ~ "PSOE",
                                    p3==2 ~ "PP",
                                    p3==3 ~ "VOX",
                                    p3==4 ~ "SUMAR",
                                    p3>16 & p3<21 ~ "Abstención/Blanco",
                                    is.na(p3) ~ NA,
                                    T ~ "Otros"))
df_nov_centro <- df_nov %>% 
  filter(p54==5)

prop.table(df_nov$recuerdo_voto,df_nov$intencion_voto)

df_nov %>% 
  group_by(recuerdo_voto,intencion_voto) %>% 
  summarise(count =n())
