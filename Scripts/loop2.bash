#!/bin/bash

echo "Aguarde ou pressione p para sair"
while true; do
	read -n1 -s -t 2 KEY
	if [ "$KEY" == "p" ]; then
		#clear
		echo "Tecla escolhida foi pressionada. Saindo do loop!"
		break
	fi
	for i in $(seq 10); do
		echo "Contador: $i"
		sleep 0.5
		clear
	done
	echo "Aguarde ou pressione p para sair!"
done
