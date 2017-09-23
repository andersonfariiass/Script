#!/bin/bash

read -p "Qual o diretório a ser feito backup: " DIR
echo

USR=`whoami` #captura qual usuário está logado

DATA=$(date +%Y%m%d) #Captura a data atual do sistema

cd /home/$USR/ #entra no diretório do usuário logado

NAME=backup-$DATA.tar.bz2
COUNT=0
B=0 
echo "contador $COUNT"
if [ -e "$NAME" ]; then
	NAME=backup-$DATE-$COUNT.tar.bz2
	while [ $B -eq 0 ]
	do
		if [ -e "$NAME" ]; then
			COUNT=$(($COUNT + 1))
			NAME=backup.$DATA-$COUNT.tar.bz2
			elif [ -e "$NAME"]; then
				COUNT=$(($COUNT + 1))
				NAME=backup.$DATA-$COUNT.tar.bz2	
		else
				echo "bkp"
				tar -jcvf "$NAME" $DIR
				break
	
		#else
		#	echo "backup"
		#	tar -jcvf "$NAME" $DIR
		#	break

else
	echo "b"
	tar -jcvf "$NAME" $DIR
				
fi

#if [ -e "$NAME" ]; then
#	NAME=backup-$DATA-$COUNT.tar.bz2
#	#echo "$NAME"
#	while [ $B -eq 0 ];
#	#echo "$B"
#	do
#		echo "$NAME"
#		COUNT=$(($COUNT + 1))
#		echo "Primeiro incremento $COUNT"
#		NAME=backup.$DATA-$COUNT.tar.bz2
#		echo "$NAME"
#		sleep 1
#		if [ -e "$NAME" ]; 
#			then
#				COUNT=$(($COUNT + 1))
#				NAME=backup.$DATA-$COUNT.tar.bz2
#				echo "$NAME"
#				echo "segundo incremento $COUNT"
#				sleep 1
#			else
#				echo "Realizando backup"
#				tar -jcvf "$NAME" $DIR
#				B=1
#				#echo " saida do while $B"
#				break
#		fi		
#	done
#else
#	tar -jcvf "$NAME" $DIR
#	echo "bkp ccriado"
#fi
