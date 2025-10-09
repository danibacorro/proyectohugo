+++
title = 'Instalación MariaDB'
date = 2025-10-03T20:01:06+02:00
draft = false
+++

MariaDB también se encuentra en los repositorios de Debian, por lo que se instala solo con:
`sudo apt install mariadb-server`
Tras su instalación, ejecutamos un script post-instalación para modificar la contraseña del usuario 'root' de MariaDB:
`sudo mariadb-secure-installation`
 
Para acceder al programa como 'root' usamos:
`mariadb -u root -p`
Desde ahí ya podremos crear bases de datos y usuarios.
