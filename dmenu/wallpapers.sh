#!/bin/bash

# Opciones del menú
options="wallpapers\nSalir"

# Muestra el menú
choice=$(echo -e "$options" | dmenu -i -p "Selecciona una opción:")

# Ejecuta la acción según la elección
case "$choice" in
    wallpapers)
        /home/bc/wall.sh
        ;;
    *)
        exit 0
        ;;
esac
