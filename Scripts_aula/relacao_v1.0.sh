#!/bin/bash
#version: 1.0
#Recebe dois numeros e mostra a relação entre eles
echo "Argumentos recebidos: $1, $2"
if [ $1 -lt $2 ]; then
	echo "O $1 é menor do que $2"
elif [ $1 -gt $2 ]; then
	echo "O $1 é maior que $2"
elif [ $1 -eq $2 ]; then
	echo "Numeros Iguais"
else
	echo "Digite apenas numeros!"
fi

