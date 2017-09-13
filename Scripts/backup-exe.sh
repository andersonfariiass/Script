#!/bin/sh
#Script para fazer backup do diretório especificado pelo usuário com nome do arquivo "backup + data"

read -p "Qual o diretório a ser feito backup: " DIR
echo

USR=`whoami` #captura qual usuário está logado

DATA=$(date +%Y%m%d) #Captura a data atual do sistema

cd /home/$USR/ #entra no diretório do usuário logado

if [ -e backup-$DATA.tar.gz ]; then #verifica se o arquivo já existe
	echo "Ops! O arquivo já existe!"
else
	echo "Iniciando o Backup..." 
	sleep 1
	clear
	tar -zcvf backup-$DATA.tar.gz $DIR #Caso o arquivo ainda não exista, o backup é feito!
	sleep 1
	clear
	echo "Backup efetuado com sucesso em /home/$USR/"
	sleep 1
	clear
	echo "#---------/home/$USR/---------#"
	echo
	ls | grep "backup.*"
fi

