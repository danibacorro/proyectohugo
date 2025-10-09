+++
title = 'Instalación PostgreSQL'
date = 2025-10-03T20:01:03+02:00
draft = false
+++

PostgreSQL se encuentra en los repositorios de Debian, por lo que su instalación se minimiza enormemente a:
`sudo apt install postgresql`

Una vez instalado, sobre la marcha, debemos ingresar al programa con el usuario 'postgres' y modificar su contraseña. Este paso es necesario en este punto, de realizarlo más adelante o tras un reinicio, puede que perdamos el acceso a dicho usuario y no podamos configurar el programa. Para acceder usaremos:
`sudo -u postgres psql`

Y una vez dentro modificamos la contraseña del usuario 'postgres' y ya podríamos realizar las gestiones que quisiéramos.
