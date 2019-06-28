# Incluya aquí las instrucciones necesarias para ejecutar su compilador

INPUT_FILE=$1
OUTPUT_FILE=${INPUT_FILE:0: -2}mips

# Si su compilador no lo hace ya, aquí puede imprimir la información de contacto
echo "coolc v8"   # Recuerde cambiar estas
echo "Copyright (c) 2019: Daniel de la Osa, Jose Luis Alvarez"    # líneas a los valores correctos

# Llamar al compilador
# echo "Compiling $INPUT_FILE into $OUTPUT_FILE"

coolc/bin/coolc %*