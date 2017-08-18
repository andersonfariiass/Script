#!/bin/sh
read -p "primeiro digito: " ANTERIOR
read -p "Segundo digito: " ATUAL

read -p "Quantidade de numeros na seuquência: " QTD

[ -z $QTD -o $QTD -lt 1 ] && echo "A quantidade dever ser maior que \"1\"" && exit

for i in $(seq $QTD)
do
	echo -n "$ANTERIOR " #Exibi o primeiro numero
	sleep 0.2 
	SOMA=$(($ANTERIOR + $ATUAL)) #Calcula o proximo numero da sequência
	ANTERIOR=$ATUAL #Armazena o atual para exibir na sequência
	ATUAL=$SOMA #O Atual foi atualizado
done
echo
