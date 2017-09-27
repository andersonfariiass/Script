#!/bin/bash
#Script para 4 questão
#Aluno: Anderson Dos Santos Farias

read -p "Qual o diretório a ser feito backup: " DIR
echo

USR=`whoami` #captura qual usuário está logado

DATA=$(date +%Y%m%d) #Captura a data atual do sistema

cd /home/$USR/ #entra no diretório do usuário logado

NAME=backup-$DATA.tar.bz2
COUNT=0

if [ -e "$NAME" ]; then
        NAME=backup-$DATE-$COUNT.tar.bz2
        while true
        do
                if [ -e "$NAME" ]; then
                        COUNT=$(($COUNT + 1))
                        NAME=backup.$DATA-$COUNT.tar.bz2
		elif [ -e "$NAME"]; then
                                COUNT=$(($COUNT + 1))
                                NAME=backup.$DATA-$COUNT.tar.bz2
                else
           		echo "Realizando Backup"
              		tar -jcvf "$NAME" $DIR
			$(md5sum -b $NAME) > hash-bkp.txt
			break
		fi
done
else
	echo "Realizando backup"
	 tar -jcvf "$NAME" $DIR
         $(md5sum -b $NAME) > hash-bkp.txt
fi
