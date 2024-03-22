#!/bin/bash

#Varibales directorio de origen y respaldo
directorio_origen=""
directorio_respaldo=""
#Leer y guardar en origen
echo "escriba su directorio de origen ej: /ruta/directorio/"
read -p ": " directorio_origen
#Leer y guardar en respaldo
echo "escriba su directorio de resplado ej: /ruta/directorio/" 
read -p ": " directorio_respaldo 

if [ -z "$directorio_origen" ] || [ -z "$directorio_respaldo" ]; then
echo "No escribió algun directorio"
exit 1
fi

#Mensaje de confirmación
read -p "¿Está seguro de que deseas respaldar los archivos en $directorio_respaldo? (Sí/No): " confirmacion

#Convertir la respuesta a minúsculas
confirmacion=$(echo "$confirmacion" | tr '[:upper:]' '[:lower:]')

#Verificar la respuesta del usuario
if [ "$confirmacion" = "sí" ] || [ "$confirmacion" = "si" ]; then
    #Realiza copia de seguridad manteniendo la estructura de directorios
    cp -R "$directorio_origen"/* "$directorio_respaldo"
    echo "Respaldo Realizado."
else
    echo "Respaldo Cancelado."
fi