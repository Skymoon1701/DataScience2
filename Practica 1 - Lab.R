library(tidyr)
library(dplyr)
library(lubridate)
#Pregunta 1:
#1. Cuales son las dimensiones del dataset cargado (número de filas y columnas)
#Cantidad de Columnas
length(epa_http)
#Cantidad de Filas
nrow(epa_http)

#2. Valor medio de la columna Bytes
mean(epa_http$X6)

#Pregunta 2:
#De las diferentes IPs de origen accediendo al servidor, ¿cuantas pertenecen a una IP claramente educativa (que contenga ".edu")?
ip_educativas <- subset(epa_http, grepl("\\.edu",X1, ignore.case = TRUE))
cantidad_ip_educativas <- nrow(ip_educativas)
print(cantidad_ip_educativas)

#Pregunta 3:
#De todas las peticiones recibidas por el servidor cual es la hora en la que hay mayor volumen de peticiones HTTP de tipo "GET"?
Peticiones_Get <- subset(epa_http, grepl("GET",X3,ignore.case=TRUE))
Peticiones_Get$X2 <- as.POSIXct(Peticiones_Get$X2, format = "[%d:%H:%M:%S]")
Peticiones_Get1 <- dplyr::select(Peticiones_Get, X2) %>% dplyr::mutate(day = day(X2), hh = hour(X2))
Hora_MayCantPet <- Peticiones_Get1 %>% group_by(hh) %>% mutate(hh) %>% summarise(n = n())
Maxi <- max(Hora_MayCantPet$n)
print (Maxi)

#Pregunta 4:
#De las peticiones hechas por instituciones educativas (.edu), ¿Cuantos bytes en total se han transmitido, en peticiones de descarga de ficheros de texto ".txt"?
ip_educativas <- subset(epa_http, grepl("\\.edu",X1, ignore.case = TRUE))
ficheros_txt <- dplyr::filter(ip_educativas, grepl("\\.txt",X4,ignore.case=TRUE))
print(ficheros_txt)

#Pregunta 5:
#Si separamos la petición en 3 partes (Tipo, URL, Protocolo), usando str_split y el separador " " (espacio), ¿cuantas peticiones buscan directamente la URL = "/"?

Frame_Contador <- dplyr::filter(epa_http,X4=="/")
Contador <- nrow (Frame_Contador)
print (Contador)

#Pregunta 6:
#Aprovechando que hemos separado la petición en 3 partes (Tipo, URL, Protocolo) ¿Cuantas peticiones NO tienen como protocolo "HTTP/0.2"?

Frame_Contador <- dplyr::filter(epa_http,X5 != 'HTTP/0.2"')
Contador <- nrow (Frame_Contador)
print (Contador)