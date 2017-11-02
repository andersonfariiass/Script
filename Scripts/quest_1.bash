#!/bin/bash
#Script para reposta da 1º questão
#Disciplina: Programação Script
#Aluno: Anderson dos Santos Farias

read -p "Informe o IP para teste de conectivida (EX: 8.8.8.8): " IP

ping -qc3 $IP >> /dev/null #Executa um ping rápido apenas para teste se o host está online
#USR=$(whoami) #Verifica qual usuário esta executando o shell
if [ $? -eq 0 ]; then
	echo "O host está online"

	ping -c10 $IP > /home/$USR/conect.log #Salva o resultado do ping no conect.log na pasta do usuário logado
	echo "Verifique o log em /home/$USR" 
else
	echo "O host está offline"
	ping -c10 $IP > /home/$USR/conect.log #Salva o resultado do ping no conect.log na pasta do usuário logado
	echo "Verifique o log em /home/$USR"
fi
