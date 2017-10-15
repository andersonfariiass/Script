#!/bin/bash

#Script para reposta da 2º questão
#Disciplina: Progamação Script
#Aluno: Anderson dos Santos Farias

echo "#----Opções----#"
echo "1 - Memoria"
echo "2 - Processador"
echo "3 - Disco"
echo "0 - Sair"

read -p "Selecione uma das opções listadas para exibir as informações: " OP



case $OP in
	1) $(cat /proc/meminfo | grep "Mem");;
	2) $(df -h);;
	3) $(cat /proc/cpuinfo | grep "name");;
	*) echo "OP invalida";;
esac
#if [ $OP -eq 1 ]; then
#	$(cat /proc/meminfo | grep "Mem" | cut -d " " -f 2)
#fi
