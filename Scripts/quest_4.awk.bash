#!/bin/bash
#script para reposta da 1º questão
#Disciplina: Programação Script
#Aluno: Anderson dos Santos Farias

read -p "Informe o IP para teste de conectivida (EX: 8.8.8.8): " IP

ping -qc3 $IP > /var/ping.txt #Executa um ping rápido apenas para teste se o host está online
awk -F' ' '/received/"{if($4!=0)print ip, "Host Online"
			else print "Host Offline"}' /var/ping.txt >> /var/ping.log




