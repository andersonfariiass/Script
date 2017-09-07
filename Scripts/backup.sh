#!/bin/sh
#Script para fazer backup do diretorio especificado pelo usuario com nome do arquivo "backup + date + hora"

read -p "Qual o diretório a ser feito backup: " DIR
echo

USR=`whoami` #captura qual usuario está logado
DATA=`date +%Y-%m-%d-%H:%M`
cd /home/$USR/
tar -zcvf backup-$DATA.tar.gz $DIR
#cd /tmp/
NOME=backup-$DATA.tar.gz
echo "$NOME"

#if [ -e $NOME ]; then
#	echo "Backup criado com Sucesso!"
#	sleep 2
#	exit
#else
#	echo "ERRO!"
#fi

