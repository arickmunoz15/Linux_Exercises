#!/bin/bash

# Bucle para recorrer todos los archivos en el directorio actual
for file in *; do
    # Verificar si el elemento es un archivo
    if [ -f "$file" ]; then
        # Buscar el patrón en el archivo y mostrar coincidencias con 
número de línea
        echo "Resultados para el archivo: $file"
        grep -n "patrón_a_buscar" "$file"
        echo "--------------------------------------"
    fi
done

