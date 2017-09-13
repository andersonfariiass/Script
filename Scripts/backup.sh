#!/bin/sh
#Script para fazer backup do diretório especificado pelo usuário com nome do arquivo "backup + data"

read -p "Qual o diretório a ser feito backup: " DIR
echo

USR=`whoami` #captura qual usuário está logado
DATA=$(date +%Y%m%d) #Captura a data atual do sistema
cd /home/$USR/ #entra no diretório do usuário logado


#BOLL=true
#NAME="backup-$DATA.tar.gz"
#NUM=0
#echo "-> $NUM"
#ls
#NAME="backup-$DATA.tar.gz"
#echo "$NAME"
#sleep 2
#NAME="teste"
#echo "$NAME"
#while [ -e $NAME ];
#do
#	NUM=$(($NUM + 1))
#	echo "incremento -> $NUM"
#	NAME="backup-$DATA-$NUM.tar.gz"
#	echo "$NAME"
#	sleep 2
#	echo "Arquivo backup-$DATA.tar.gz já existe!"
#	echo "O arquivo será renomeado como backup-$DATA-$NUM.tar.gz"
#	echo "iniciando Backup!"
#	tar -zcvf backup-$DATA-$NUM.tar.gz $DIR
	#NAME="backup-$DATA-$NUM.tar.gz"
#done
#	echo "Inicinando Backup!"
#	cd /home/$USR
#	tar -zcvf backup-$DATA.tar.gz $DIR
	#sleep 1
	#clear
#	echo "Backup Concluido com sucesso!"



#if [ -e backup-$DATA.tar.gz ]; then #verifica se o arquivo já existe
#	echo "Ops! O arquivo já existe!"
	
#else
#	echo "Iniciando o Backup..." 
#	sleep 1
#	clear
#	tar -zcvf backup-$DATA.tar.gz $DIR #Caso o arquivo ainda não exista, o backup é feito!
#	echo "Backup efetuado com sucesso em /home/$USR/"
#fi

