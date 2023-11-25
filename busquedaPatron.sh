#!/bin/bash

# Función que crea un archivo con el nombre dado y lista los archivos con 
el patrón indicado
create_file_listing_pattern() {
    local file_name=$1
    local pattern=$2
    local current_dir=$(pwd)

    # Verificar si se proporcionó un nombre de archivo y un patrón
    if [ -z "$file_name" ] || [ -z "$pattern" ]; then
        echo "Error: Se requieren dos parámetros: nombre_archivo y 
patrón."
        return 1
    fi

    # Crear un archivo con el nombre dado y listar los archivos con el 
patrón en el directorio actual
    grep -rl "$pattern" "$current_dir" > "$file_name"
    echo "Se ha creado el archivo '$file_name' con el listado de archivos 
que contienen el patrón '$pattern'."
}

# Verificar si se proporcionaron los dos parámetros al script
if [ $# -eq 2 ]; then
    create_file_listing_pattern "$1" "$2"
else
    echo "Error: Se requieren dos parámetros: nombre_archivo y patrón."
fi

