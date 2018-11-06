#!/bin/bash

# Agregar el remote al repositorio
git add remote origin $remote

# Revisar los remotes del repositorio
# La url del remote nos lo da GitHub
#   (-v muestra el detalle de los remotes)
git remote -v

# Revisar el estado del repositorio antes de subir
# los cambios
git status

# Subir los cambios
#
#   --set-upstream configura el "upstream" o
#   el principal remote, para no tener que escribirlo
#   cada vez
#   A partir del proximo push, se puede hacer sin
#     --set-upstream origin
git push --set-upstream origin master

# Crear un nuevo branch y cambiarse a ese
#
# Tambien se puede hacer:
#   git checkout -b new branch
# Esto crea el branch y cambia a el
git branch new-branch

# Cambiarse al nuevo branch
git checkout new-branch

# Crear un nuevo archivo
#
#  (puede ser por el metodo que quieran)
echo "I am a file created on the new-branch" >> file-new-branch

# Revisar de nuevo el estado del repositorio
git status

# Crear un commit para guardar los cambios en
# la base de datos
git commit -m "Add file-new-branch"

# Subir los cambios al repositorio
git push

# ===== #
# Ir a GitHub y crear un Pull Request
# Hacer merge del Pull Request
# ===== #

# Cambiar a master
git checkout master

# Descargar los cambios
git pull

# Revisar los archivos
git ls-files

