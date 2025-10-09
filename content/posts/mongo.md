+++
title = 'Instalación Mongo'
date = 2025-10-09T12:17:59+02:00
draft = false
+++

Actualmente, el soporte de MongoDB se extiende hasta Debian 12 de forma oficial, sin embargo, su instalación en Debian 13 no tiene compromisos. Lo primero que debemos hacer es cargar la clave pública y los repositorios de Mongo:
```
wget -qO- https://www.mongodb.org/static/pgp/server-8.0.asc | sudo tee /etc/apt/trusted.gpg.d/server-8.0.asc
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/debian bookworm/mongodb-org/8.0 main" | sudo tee /etc/apt/sources.list.d/mongodb-org-8.0.list
```
Después, instalaremos el paquete `mongodb-org` que  incluye tanto la base de datos como otros paquetes que nos serán útiles:
```
				sudo apt update
				sudo apt install mongodb-org
```


Tras acabar la instalación, si ejecutamos `systemctl status mongod`, apreciamos que se encuentra inactivo y desactivado al inicio, lo solucionaremos con `start` y `enable`:

``` 
sudo systemctl start mongod
sudo systemctl enable mongod
```
Por último, accedemos a la base de datos con la shell de Mongo, `mongosh`.

Con `use prueba` creamos una base de datos nueva o nos conectamos a una existente.
