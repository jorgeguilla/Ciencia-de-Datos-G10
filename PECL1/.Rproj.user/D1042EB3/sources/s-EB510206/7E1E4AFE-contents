library(arules)

#Se meten los datos en forma de matriz binaria 
# 6,5 son las dimensiones de la matriz y con byrow = TRUE rellenamos por filas 
# dimnames serás las etiquetas de filas y columnas.
# sparse es un tratamiento de matriz de R requerido por el programador del paquete.

muestra <- Matrix(c(1,0,0,1,1,1,   1,0,1,0,1,1,  1,0,0,1,0,1,  1,0,1,1,1,0,  1,0,0,0,1,1,  0,0,0,1,0,0,  1,0,0,0,1,1,  0,1,1,0,0,0),8,6, 
                  byrow = TRUE, dimnames = list(c("coche1","coche2","coche3","coche4","coche5","coche6","coche7","coche8"),
                                                c("Faros de Xenón", "Alarma", "Techo solar", "Navegador", "Bluetooth", "Control de Velocidad")), sparse = TRUE)



muestrangCMatrix <- as(muestra, "nsparseMatrix")  #Se convierte a un formato más óptimo
transpuestangCMatrix <- t(muestrangCMatrix) #Traspuesta


transacciones <- as(transpuestangCMatrix, "transactions")
summary(transacciones) # Resumen de las transacciones 


#Para ejecutar apriori se especifican datos, soporte y confianza
asociaciones <- apriori(transacciones, parameter = list(support = 0.5, confidence = 0.8))
inspect(asociaciones) #Se sacan por pantalla 
