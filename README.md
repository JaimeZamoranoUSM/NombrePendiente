# README

El siguiente software fue realizado mediante Ruby on Rails con versiones:
  -Ruby: 2.3
  -Rails: 5.2.0

Para correr inicialmente el programa, es necesario ejecutar los comandos que mencione la consola, para crear o actualizar la bd e instalar las gemas necesarias.

Para ingresar al sistema se debe crear un usuario o ingresar con algun usuario creado con anterioridad. Existen 2 tipos de usuario (bodeguero y personal de obra), los cuales tendran diferentes permisos y funciones segun corresponda.

Los usuarios pueden trabajar actualmente con 2 formularios, cuyos parametros y significado se presentara a continuacion:

-Solicitudes:
  -Titulo: titulo para identificar la solicitud de materiales.
  -Descripcion: descripcion detallada de la solicitud, la cual debe contener los materiales a solicitar con sus respectivas cantidades y unidades.
  -Estado: estado actual de la solicitud.
  -Fecha Requerida: fecha en que se desea que lleguen los materiales.
  Fecha Estimada: fecha estimada en que llegaran los materiales, ingresada por el bodeguero.

-Materiales:
  -Nombre: Nombre del material, con sus respectivas caracteristicas en caso de ser necesario.
  -Cantidad: Cantidad disponible del material en stock.
  -Unidad: Unidad en la cual se encuentra el material (ejemplo: cajas, individual, etc)
