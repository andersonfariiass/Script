#!/bin/sh

read -p "Qual o diretório a ser feito backup: " DIR
echo

USR=`whoami`
DATA=$(date +%Y-%m-%d)

cd /home/$USR/

BOLLL=$true
NUM=0
NAME="backup-$DATA.tar.gz"
while [ $BOLL ]
do
	if [ -e $NAME ]; then
		NUM=$(($NUM + 1))
		echo "O arquivo $NAME já existe!"
		echo "O arquivo será renomeado para backup-$DATA-$NUM.tar.gz"
		echo "Inicando Backup!"
		tar -zcvf backup-$DATA-$NUM.tar.gz $DIR
		echo "Backup feito com sucesso!"
		BOLL=$false
	else
		echo "criado backup"
		tar -zcvf backup-$DATA.tar.gz $DIR
		BOLL=$false
fi
done
