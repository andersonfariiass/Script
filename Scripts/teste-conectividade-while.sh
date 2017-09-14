#!/bin/bash
ARQ="lista_ip.txt"

echo "Resultado do Teste"

while true
do 
	cat servidores.txt | while read IP
do
	RETORNO=`ping -qc1 $IP | grep received | cut -d " " -f 4`
	if [ $RETORNO == 1 ]
	then
		echo "Teste do $IP com sucesso." >> $ARQ
	else
		echo "Teste do $IP falhou." >> $ARQ
	fi
done
echo >> $ARQ

sleep 5

done
