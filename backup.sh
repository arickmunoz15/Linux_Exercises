#!/bin/bash

# Función para realizar el respaldo del archivo si existe
backup_file() {
    if [ -f "$1" ]; then
        cp "$1" "$1.bak"
        echo "Se realizó un respaldo del archivo '$1'."
    else
        echo "El archivo '$1' no existe. No se pudo realizar el respaldo."
    fi
}

# Bucle infinito para solicitar información continuamente
while true; do
    read -p "Ingrese un nombre de archivo para buscar (o 'exit' para 
salir): " filename
    
    # Verificar si se ingresó 'exit' para salir del bucle
    if [ "$filename" == "exit" ]; then
        echo "Saliendo del programa."
        break
    fi

    # Verificar si el archivo existe y realizar el respaldo o mostrar un 
mensaje de error
    backup_file "$filename"
done

