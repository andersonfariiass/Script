#!/bin/sh
read -p "primeiro digito: " ANTERIOR #Ler e armazena o primeiro numero da sequência
read -p "Segundo digito: " ATUAL #Ler e armazena o segundo numero da sequência

read -p "Quantidade de numeros na seuquência: " QTD #Ler e armazena quantos numeros a sequencia deve apresentar

[ -z $QTD -o $QTD -lt 1 ] && echo "A quantidade dever ser maior que \"1\"" && exit #Verifica se a quantida informada foi nula ou menor que zero

for i in $(seq $QTD) #Se a quantidade foi maior que zero iniciar o for criando uma sequencia fibbonaci com a quantidade informada
do
	echo -n "$ANTERIOR " #Exibi o primeiro numero
	sleep 0.2 
	SOMA=$(($ATUAL + $ANTERIOR)) #Calcula o proximo numero da sequência "o proximo numero sempre será o atual + anterior"
	ANTERIOR=$ATUAL #Armazena o atual para exibir na sequência
	ATUAL=$SOMA #O Atual foi atualizado
done
echo
