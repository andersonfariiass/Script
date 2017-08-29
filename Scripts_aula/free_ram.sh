#!/bin/sh
#Script para exibir quantidade de memoria do sistema

echo "Memoria do sistema"

cat /proc/meminfo | grep Mem #Ler o arquivo meninfo e procuro pelo paramentro Mem
#free -h | cut -d: -f 1

