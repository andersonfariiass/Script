#!/bin/bash
#Script que verifica o uso do disco
echo "Uso do disco"

DISCO=$(df -h | tr -s " " | grep -i /dev)
disk=$(df -h | tr -s " " | grep -i /home)
echo $DISCO

if [ -z $disk ]; then
	echo "O diretorio /home nao esta em particao separada!"
	echo "$DISCO"
else
	echo "Uso da particao /home."
	echo "$disk"
fi

#df -h > tmp.txt #Joga a saida do df para o arquivo tmp.txt
#head -n1 tmp.txt && grep /dev/sd tmp.txt #Primeiro exibi a primeira linha e as linhas que contem as unidades /dev/sd 

#rm -r tmp.txt #Apaga o arquivo
#echo

