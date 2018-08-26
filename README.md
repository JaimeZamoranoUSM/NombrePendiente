# README

El siguiente software fue realizado mediante Ruby on Rails con versiones:
  -Ruby: 2.3
  -Rails: 5.2.0

Para correr inicialmente el programa, es necesario ejecutar los comandos que mencione la consola, para crear o actualizar la bd e instalar las gemas necesarias.

Para ingresar al sistema se debe crear un usuario o ingresar con algun usuario creado con anterioridad. Existen 3 tipos de usuario (bodeguero, personal de obra y encargado de compra), los cuales tendran diferentes permisos y funciones segun corresponda.

Los usuarios pueden interactuar con distintos formularios y vistas, donde el flujo de estos dependerá de los permisos que tenga cada usuario.

Las principales funcionalidades de los usuarios son:

Personal de Obra:

- Crear solicitudes de materiales faltantes en las obras, y enviarle dichas solicitudes al bodeguero.
- Mantener un informado sobre la situación y estado de sus solicitudes enviadas.

Bodeguero:

- Manejar y actualizar las solicitudes enviadas por el personal de obra, para mantenerlo informado sobre la situación actual de estas.
- Mantener un manejo del stock de materiales disponibles en bodega.
- Pedir materiales faltantes al encargado de compra, para que se realice la compra de estos.

Encargado de compra:

- Mantener un manejo de los materiales faltantes, pedidos por el bodeguero
- Creación de órdenes de compra para los materiales faltantes, con el objetivo de enviarle estas órdenes a los proveedores y recibir las cotizaciones su parte.
