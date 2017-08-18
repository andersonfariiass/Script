#!/bin/sh
#Script que verifica o uso do disco
echo "Uso do disco"

df -h > tmp.txt #Joga a saida do df para o arquivo tmp.txt
head -n1 tmp.txt && grep /dev/sd tmp.txt #Primeiro exibi a primeira linha e as linhas que contem as unidades /dev/sd 

rm -r tmp.txt #Apaga o arquivo
echo

