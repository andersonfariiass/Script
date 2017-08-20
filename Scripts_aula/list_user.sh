#!/bin/sh
#Script que informa a quaitidade de usuarios do sistema
echo "Quantidade de usuarios do sistema"
wc -l /etc/passwd | cut -d: -f 1 ##Conta quantas linhas existe no arquivo /etc/passwd filtrando somente a primeira coluna.


