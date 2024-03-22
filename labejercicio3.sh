#!/bin/bash

#Umbral en porcentaje
umbral=10

#Obtener el espacio en uso del disco en porcentaje (por defecto en windows usará /mnt/ a menos que se use linux que sospecho que verá el disco en general)
espacio_enuso=$(df -h / | awk 'NR==2 {print $5}' | sed 's/%//')

#Verifica si el espacio en uso es menor que el umbral
if [ "$espacio_enuso" -lt "$umbral" ]; then
    echo "Espacio del disco bajo. Espacio en uso: $espacio_enuso%"
else
    echo "Espacio del disco suficiente. Espacio en uso: $espacio_enuso%"
fi