#!/bin/bash

for i in $@
do

	if [ -f $i ]
	then
		size=$(du -h $i | cut -f1)
		echo "El archivo $i tiene un tamano de $size"
	else 
		echo "No se encontro el archivo"
	fi
done
