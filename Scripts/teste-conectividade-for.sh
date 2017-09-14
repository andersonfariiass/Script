#!/bin/sh

ARQ="lista_ip.txt"

echo "Resultado do teste"

for IP in `cat servidores.txt`
do

RETURN=`ping -q -c1 $IP | grep received | cut -d " " -f 4`
	if [ $RETURN == 1 ]; then
		echo "Teste do $IP com sucesso" >> $ARQ
	else
		echo "Teste do $IP falhou" >> $ARQ
	fi
done

echo >> $ARQ

sleep 5
