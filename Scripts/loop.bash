#!/bin/bash
#Script que fica em loop infinito até que a tecla determinada seja pressionada
echo "Pressiona qualquer tecla para prosseguir ou p para sair"
while read KEY; do
	if [ "$KEY" == "p" ]; then #Verifica se a tecla pressionada foi p.
		echo "Tecla escolhida foi pressionada. Saindo do loop." #Caso verdade, o script encerra.
		break
	fi
	for i in $(seq 10); #Se uma tecla qualque for pressionada exceto a tecla p, o script fica em loop contando uma sequencia de dez
	do 
		echo "contando: $i"
		sleep 1
		clear
	done
	echo "Pressione qualquer tecla pra prosseguir ou p para sair!"
done

#echo "Pressiona qualquer tecla para prossegur ou p para sair!"
