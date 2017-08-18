#!/bin/bash
# fibonacci.sh
# Desenvolvido por: Raimundo Portela - rai3mb@gmail.com
# Contruído para ajudar no tópico: 
# http://www.vivaolinux.com.br/topico/Shell-Script/Duvida-com-Script
# Script simples, apenas para fazer a série de fibonacci em shell
#-------------------------------------------------------------
read -p "Informe o primeiro valor: " PRIMEIRO
read -p "Informe o segundo valor: " SEGUNDO

read -p "Informe a quantidade de números que quer na sequência: " QTD

[ -z "$QTD" -a "$QTD" -gt 1 ] && echo "A quantidade deve ser maior que 1" && exit

for i in $(seq $QTD)
do
    echo -n "$PRIMEIRO " # mostra o elemento
    SOMA=$(($PRIMEIRO+$SEGUNDO)) # faz a soma dos elementos para a sequência
    PRIMEIRO=$SEGUNDO # guarda o valor do segundo elemento (ainda não exibido)
    SEGUNDO=$SOMA # a soma passa a ser o segundo elemento
done
# um echo apenas para pular a linha ao fim da execução do script
echo
