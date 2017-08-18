#!/bin/bash
#Script que faz interação com usuário
echo "Vou buscar os dados do sistema. Posso continuar? [sn] "
read RESPOSTA
test "$REPOSTA" = "n" && exit #verifica se o valor da variavel é igual a n, caso verdade executado o comando exit
echo "Data e Horário:"
date
echo
echo"Usod do disco:"
df -h
echo
echo"Usuarios conectados:"
whoami
