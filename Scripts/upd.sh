#!/bin/sh

ping -q -c5 8.8.8.8 > /dev/null #Realiza um ping em segundo plano

if [ $? -eq 0 ]  #Verifica se o ping foi bem sucedido
then
	sudo apt update #Se o ping foi bem sucedido executa o apt update do sistema.
	echo "OK"
fi
