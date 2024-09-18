#!/bin/bash
# Ejemplo de scanner de puertos
# Parámetros
host=$1
firstport=$2
lastport=$3

# Función para escanear puertos
function portscan {
    for ((counter=$firstport; counter<=$lastport; counter++))
    do
        (echo >/dev/tcp/$host/$counter) > /dev/null 2>&1 && echo "$counter open"
    done
}

# Llamada de la función
portscan
