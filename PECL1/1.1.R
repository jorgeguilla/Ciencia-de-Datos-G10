muestra <- read.table("datos/satelites.txt")
dim(muestra) #Dimensiones 


so=muestra[rev(order(muestra$Radio)),] #Mayor a menor
so=muestra[order(muestra$Radio),] #Menos a mas 

radio <- muestra$Radio #Mas comodidad

#==============RANGO========================== 
rango <- max(radio) - min(radio)

rango <- function(r){max(r)-min(r)} # Funciosn rango
dump("rango", file = "rango.R") #Se salva la función 
rm("rango")      #Se elimina la función 
source("rango.R")   #Se vuelve a cargar la función



#===========FRECUENCIAS===============
frecabsradio <- table(muestra$Radio) #Absoluta
frecabscumradio <- cumsum(frecabsradio) #Abs Acumulada

frecrel <- function(x){table(x)/length(x)} 
frecrelradio <- frecrel(muestra$Radio) #Frecuencia relativa
frecrelcumradio <- cumsum(frecrelradio) # Frecuencia relativa acumulada 


#==============MEDIA==================
mr <- mean(muestra$Radio)

#=============VARIANZA Y DT================
sdr <- sd(muestra$Radio)
varr <- var(muestra$Radio)
#No coincide con la calculada en clase porque divide entre (n+1) para 
# poder hacer inferencia. 

media <- function(x){mean(x)/length(x)*(length(x)-1)}
varianza <- function(x){var(x)/length(x)*(length(x)-1)}
dt <- function(x){sqrt(varianza(x))}

#=================MEDIANA Y CUANTILES============
median(muestra$Radio)
cuar1r <- quantile(muestra$Radio, 0.25)
cuar3r <- quantile(muestra$Radio, 0.75)
#Los cuartiles 1 y 3 no salen igual que en clase por usar 
# distribuciones estadísticas para las aproximaciones

cuar2r <- quantile(muestra$Radio, 0.5) #Igual que la mediana 
cuan54 <- quantile(muestra$Radio, 0.54) 



