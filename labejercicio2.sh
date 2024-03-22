#!/bin/bash

#Solicitar al usuario el nombre o tipo de archivo y el nuevo nombre
read -p "Ingrese el directorio donde desea buscar los archivos: " directorio

ls $directorio

read -p "Ingrese el nuevo nombre para los archivos: " nuevo_nombre

#Iteración sobre cada archivo y renombrarlo
for file in "$directorio"/*; do
    #Obtener el nombre del archivo
    filename=$(basename "$file")
    #agregar el nuevo nombre del archivo separado con un "-"
    nuevo_nombre_archivo="$directorio/$nuevo_nombre-$filename"
    #Renombrar el archivo
    mv "$file" "$nuevo_nombre_archivo"
    echo "Archivo '$file' renombrado a '$nuevo_nombre_archivo'"
done

echo "Renombrado masivo completado."