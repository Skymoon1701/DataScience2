#Pregunta 1:
  
#1. Dado un registro de vehículos que circulan por una autopista, disponemos de su marca y modelo, país de matriculación, 
#y tipo de vehículo (por número de ruedas). Con tal de ajustar precios de los peajes:
#¿Cuántos vehículos tenemos por tipo? (Descriptivas) Porque se busca identificar la cantidad de vehiculos por tipo de vehiculo.
#¿Cuál es el tipo más frecuente? (Descriptivas) Porque se busca identificar la cantidad de vehiculos por tipo mas frecuente.
#¿De qué países tenemos más vehículos? (Descriptivas) Porque se busca identificar la mayor cantidad de vehiculos por paìs.

#2. Dado un registro de visualizaciones de un servicio de video-on-demand, donde disponemos de los datos del usuario, de la 
#película seleccionada, fecha de visualización y categoría de la película, queremos saber: 
#¿Hay alguna preferencia en cuanto a género literario según los usuarios y su rango de edad? (Exploratoria) Porque se busca identificar la cantidad de videos visualizados
#relacionando la edad del usuario y el gènero literario del video.

#3. Dado un registro de peticiones a un sitio web, vemos que las peticiones que provienen de una red de telefonía concreta acostumbran a ser incorrectas y provocarnos 
#errores de servicio. 
#¿Podemos determinar si en el futuro, los próximos mensajes de esa red seguirán dando problemas? (Predictiva) Porque se busca predecir valores futuros.
#¿Hemos notado el mismo efecto en otras redes de telefonía? (Exploratorias) Porque se busca relacionar la informaciòn obtenida con otras redes de telefonìa.

#4. Dado los registros de usuarios de un servicio de compras por internet, los usuarios pueden agruparse por preferencias de productos comprados.
#Queremos saber si:
#¿Es posible que, dado un usuario al azar y según su historial, pueda ser directamente asignado a un o diversos grupos? (Inferenciales) Se busca inferir en el resultado.


#Pregunta 2:
#Sabemos que un usuario de nuestra red empresarial ha estado usando esta para fines no relacionados con el trabajo, como por ejemplo tener un servicio web no autorizado
#abierto a la red (otros usuarios tienen servicios web activados y autorizados). No queremos tener que rastrear los puertos de cada PC, y sabemos que la actividad puede
#haber cesado. Pero podemos acceder a los registros de conexiones TCP de cada máquina de cada trabajador (hacia donde abre conexión un PC concreto). Sabemos
#que nuestros clientes se conectan desde lugares remotos de forma legítima, como parte de nuestro negocio, y que un trabajador puede haber habilitado temporalmente
#servicios de prueba. Nuestro objetivo es reducir lo posible la lista de posibles culpables, con tal de explicarles que por favor no expongan nuestros sistemas sin
#permiso de los operadores o la dirección.

#Explica con detalle cómo se podría proceder al análisis y resolución del problema mediante Data Science, indicando de donde se obtendrían los datos, qué tratamiento
#deberían recibir, qué preguntas hacerse para resolver el problema, qué datos y gráficos se obtendrían, y cómo se comunicarían estos.

#RPTA: Se tendrìa que analizar las conexiones TCP enviadas y recibidas y compararlas con la lista de IPs y puertos autorizados de cada trabajador.

#Bàsicamente los datos necesarios para el analisis es la lista de "IPS y puertos autorizados" (Departamento de Sistemas) y los logs de conexiones TCP de cada 
#computador (Computador del Colaborador), Base de datos de Computadores (CMDB) y Lista de colaboradores de RRHH

#La lista de IPs y puertos autorizados se encuentran en un formato excel, por lo que no habrìa problema.
#El log de conexiones TCP de cada computador se tiene que transformar a un formato leible por el RStudio.

#¿Desde que fecha se presenta el problema?¿Cuales son las conexiones anòmalas o no autorizadas identificadas?¿Cuales puertos han sido utilizados para estas conexiones 
#anòmalas?¿En que horarios se han realizado estas conexiones?¿A que àrea/departamentos pertenecen dichos usuarios?¿Que usuarios han realizado estas actividades ilegales?

#Realizadas estas preguntas se podrìan obtener datos como: Direcciones IP y puertos en conexiones no autorizadas, por horario, usuario por àrea/departamento responsable 
# y fecha de realizadas o recibida la conexiòn. Con esta informaciòn se podrìa identificar ràpidamente a los usuarios implicados, Direcciones IP y puertos mas utilizados,
#a que àrea pertenece cada usuario y en que horarios mayormente ejecutan dichas conexiones. Adicionalmente, esta revisiòn podrìa ejecutarse periodicamente para identificar
#futuros eventos del mismo tipo y tomar acciones en un menor tiempo.
#
