#!/bin/sh
#Script para reposta da 2º questão
#Disciplina: Progamação Script
#Aluno: Anderson dos Santos Farias

echo "#----Opções----#"
echo "1 - Memoria"
echo "2 - Processador"
echo "3 - Disco"
echo "0 - Sair"

read -p "Selecione uma das opções lista para exibir as informações: " OP

if [ "$OP" = 1 ]; then
	echo "#----Informações sobre Memória---#"
	MEM=$(cat /proc/meminfo | grep "Mem")
	#MEM=$(cat /proc/meminfo | grep  "Mem" | cut -d " " -f 2)
	echo "$MEM"
elif [ "$OP" = 2 ]; then
	echo "#----Informações sobre Processador----#"
	NCPU=$(cat /proc/cpuinfo | grep  name | tail -1 | cut -d\: -f 1-3)
	echo "$NCPU"
elif [ "$OP" = 3 ]; then
	echo "#----Informações sobre Discos de Armazenamento---#"
	DISK=$(df -h | grep -e /sd -e /hd | tr -s '')
	echo "$(df -h | head -n1 | tr -s '')"
	echo "$DISK"
elif [ "$OP" = 0 ];  then
	echo "Saindo..."
	sleep 1
	clear
	exit
else
	echo "Opção Inválida!"
fi
