muestra <- read.table('datos/distancias.txt')

#Para mayor comodidad
d <- muestra$Distancia

#============Rango
rangd <- max(d) - min(d)
print("Rango")
print(rangd)

#============Frecuencias

frecabs <- table(d)
frecabscum <- cumsum(frecabs)

frecrel <- table(d)/length(d)
frecrelcum <- cumsum(frecrel)

print("FRECUENCIA ABSOLUTA")
print(frecabs)
print("FRECUENCIA ABSOLUTA ACUMULADA")
print(frecabscum)
print("FRECUENCIA RELATIVA")
print(frecrel)
print("FRECUENCIA RELATIVA ACUMULADA")
print(frecrelcum)


#============Media, Varianza y Desviación Típica

#Las de R
sdr <- sd(d)
varr <- var(d)
avgr <- mean(d)


print("MEDIA   VAR    DT  (Estimaciones de R)")
print(c(avgr,varr, sdr))

#Para calcular las reales
media <- function(x){mean(x)/length(x)*(length(x)-1)}
varianza <- function(x){var(x)/length(x)*(length(x)-1)}
dt <- function(x){sqrt(varianza(x))}

print("MEDIA   VAR    DT  (Vistas en clase)")
print(c(media(d), varianza(d), dt(d)))


#============Mediana y cuartiles

print("MEDIANA Y CUARTILES")
#Se puede calcular todo directamente mediante 
print(quantile(d))
print("CUANTIL 32%")
print(quantile(d, 0.32))
