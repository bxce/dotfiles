#!/bin/bash

# Asegúrate de que dmenu está instalado
if ! command -v dmenu &> /dev/null; then
    echo "Error: dmenu no está instalado. Instálalo con 'sudo apt install dmenu'"
    exit 1
fi

# Define el directorio de wallpapers
WALL_DIR="/home/bc/wall"

# Buscar imágenes válidas y seleccionar una con dmenu
WALLPAPER=$(find "$WALL_DIR" -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" -o -iname "*.webp" \) | dmenu -i -l 20)

# Verifica si el usuario seleccionó algo
if [ -n "$WALLPAPER" ]; then
    feh --bg-fill "$WALLPAPER"
    notify-send "Fondo de pantalla establecido" "$WALLPAPER"
else
    notify-send "No se seleccionó ninguna imagen."
fi

clear
