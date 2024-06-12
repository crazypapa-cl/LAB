#!/bin/bash

adapter_info=$(bluetoothctl show)
echo "Información del adaptador Bluetooth:"
echo "$adapter_info"
echo "-------------------------------------"

# Habilitar el adaptador Bluetooth
bluetoothctl power on

# Iniciar el escaneo
bluetoothctl scan on &

# Esperar 10 segundos para escanear los dispositivos
sleep 10

# Detener el escaneo
bluetoothctl scan off

# Listar los dispositivos encontrados
devices=$(bluetoothctl devices)

# Mostrar los dispositivos encontrados
echo "Dispositivos Bluetooth encontrados:"
echo "$devices"
