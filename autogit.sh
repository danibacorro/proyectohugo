#!/bin/bash
# Autor: Daniel Baco
# Práctica generación de páginas web estáticas
# -----------------------------------------------------

# Salir si se producen errores
set -e

# Subir proyecto
echo "\nSincronizando proyecto en GitHub...\n"
cd ~/proyectohugo
git add .

# Solo hace commit si hay cambios, necesario con set -e
if git diff-index --quiet HEAD --; then
  echo "\nSin cambios que subir.\n"
else
  git commit -m "\nActualización del proyecto: $(date)\n"
  git push origin main
  echo "\nProyecto actualizado en GitHub.\n"
fi

# Regenerar página web
echo "\nCreando página web...\n"
hugo -d ../blogdani/docs

# Subir página
echo "\nSincronizando página web...\n"
cd ../blogdani/docs
git add .

# Solo commits con cambios
if git diff-index --quiet HEAD --; then
  echo "\nSin cambios que subir.\n"
else
  git commit -m "\nActualización del sitio: $(date)\n"
  git push origin main
  echo "\nPágina web sincronizada en GitHub. Puedes acceder a ella aquí: https://danibacorro.github.io/blogdani/\n"
fi

# Volver al directorio raíz
cd ..

