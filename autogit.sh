#!/bin/bash
# Autor: Daniel Baco
# Práctica generación de páginas web estáticas
# -----------------------------------------------------

# Salir si se producen errores
set -e

# Subir proyecto
echo "Sincronizando proyecto en GitHub..."
cd ~/proyectohugo
git add .

# Solo hace commit si hay cambios, necesario con set -e
if git diff-index --quiet HEAD --; then
  echo "Sin cambios que subir."
else
  git commit -m "Actualización del proyecto: $(date)"
  git push origin main
  echo "Proyecto actualizado en GitHub."
fi

# Regenerar página web
echo "Creando página web..."
hugo -d ../blogdani/docs

# Subir página
echo "Sincronizando página web..."
cd ../blogdani/docs
git add .

# Solo commits con cambios
if git diff-index --quiet HEAD --; then
  echo "Sin cambios que subir."
else
  git commit -m "Actualización del sitio: $(date)"
  git push origin main
  echo "Página web sincronizada en GitHub. Puedes acceder a ella aquí: https://danibacorro.github.io/blogdani/"
fi

# Volver al directorio raíz
cd ..

