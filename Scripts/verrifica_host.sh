#!/bin/sh
#Verificar se um determinado host esta online atraves de um ping
read -p "Digite o IP de destino: " IP
echo

ping -qc5 $IP > /dev/null #echo "Verificando..."

echo

if [ $? -eq 0 ]; then
	echo "O host $IP esta online"
else 
	echo "O host $IP esta offline"
fi


 
