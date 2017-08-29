#!/bin/bash
#Script com uso de case
echo "Script para uso do case."
echo "Opção 1: Listar o conteudo de /etc/init.d"
echo "Opção 2: Listar o conteúdo de /etc/kernel"
read OPCAO
case $OPCAO in
	1)
	echo "Você escolheu a opção $OPCAO"
	ls /etc/init.d/;;
	2)
	echo "Você escolheu a opção $OPCAO"
	ls /etc/kernel;;
	*)echo "Você não digitou nehuma opção válida";;
esac
