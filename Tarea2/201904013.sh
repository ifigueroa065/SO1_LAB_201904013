#!/bin/bash

# Array de nombres de carros
NOMBRES=("Mustang" "Camaro" "Corvette" "Toyota" "Honda" "Accord" "Ferrari" "Suzuki" "Mazda" "Bmw")

# Loop para crear 10 contenedores
for i in {1..10}
do
  # Generar un número aleatorio para seleccionar un nombre del array
  NOMBRE_RANDOM=${NOMBRES[$RANDOM % ${#NOMBRES[@]}]}

  # Crear el contenedor en base a la imagen alpine
  sudo docker run -d --name "contenedor_$NOMBRE_RANDOM" alpine sleep 3600

  echo "Contenedor contenedor_$NOMBRE_RANDOM creado."
done
