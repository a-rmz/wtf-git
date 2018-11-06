#!/bin/bash

# Crea el directorio de workspace en la raiz del usuario
# y el directorio que va a ser el repo de este ejercicio en wtf-git
# 
#   (podria ser cualquier directorio que quieran)
mkdir -p ~/workspace/wtf-git

# Cambiar a ese directorio
cd ~/workspace/wtf-git

# Inicializar el repositorio
git init

# Crear un archivo
#
#  (puede ser por el metodo que quieran)
echo "I'm the first file" > file1

# Revisar el estado del repositorio
git status

# Añadir los cambios hechos a la zona de staging
git add file1

# Hacer un cambio adicional al file1
#
#  (puede ser por el metodo que quieran)
echo "(and I've been modified)" >> file1

# Revisar de nuevo el estado del repositorio
git status

# Crear un commit para guardar los cambios en
# la base de datos
# 
#   -m "" Agrega el mensaje de commit desde el comando
#   Si se ejecuta sin -m "", abre un editor de texto
#   para escribir el mensaje ahi
#
# Cuando se va a hacer un commit se puede indicar
# especificamente que archivos se quiere aplicar el
# commit pasando como parametro al comando los archivos
git commit -m "Add file1"

# Revisar de nuevo el estado del repositorio
#
# Los cambios que se agregaron despues de agregarlo
# a staging aun no se aplicaron (y no se guardaron)
git status

# Revisar las diferencias entre los archivos
git diff file1

# Agregar el archivo a staging
git add file1

# Crear un commit para guardar las modificaciones en
# la base de datos
git commit -m "Update file1"

# Revisar el avance del proyecto
git log

# Revisar el avance del proyecto con detalles
# de los cambios
git log -p


# Crear el archivo de gitignore
#
#  (puede ser por el metodo que quieran)
echo "bin/" > .gitignore

# Crear el directorio de bin
mkdir bin

# Crear dos archivos vacios en la carpeta de bin
#
#  (puede ser por el metodo que quieran)
touch bin/compiled-1 bin/compiled-2

# Revisar de nuevo el estado del repositorio
git status

# Listar los archivos seguidos por git
git ls-files


# [ OPCIONAL ] Crear un git-hook

# Crear y abrir el archivo del hook de pre-commit
#
#  (puede ser por el metodo que quieran)
vim .git/hooks/pre-commit

# Copiar el siguiente script en el archivo (sin el primer #):
#    #!/bin/bash
#    echo "This happens before the commit"
#    echo "=============================="

# Hacer ejecutable el archivo
# 
# Cambia los permisos para que sea ejecutable por
# default en los sistemas Unix-like
chmod +x .git/hooks/pre-commit

# Agregar un archivo nuevo
touch file2

# Agregar el archivo a staging
git add file2

# Commitear el archivo a la base de datos
git commit -m "Add empty file2"
