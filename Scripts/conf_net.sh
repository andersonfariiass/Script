#!/bin/sh
#Script para configuracao da placa de rede local manual

ifconfig
echo

read -p "Qual interface de rede deseja configurar? " INTF
echo
read -p "Informe o IP destinado ao host EX(192.168.1.25): " IP
echo 
read -p "Informe a mascara de rede: "  MASK
echo
read -p "Informe o GateWay da rede: " GW
echo
sleep 1

clear

echo "Configurando..."
sleep 3

ifconfig $INTF $IP netmask $MASK

echo "Testando o IP adicionado."
ping -c2 $IP
sleep 2

clear

if [ $? -eq 0 ]; then
	route add default gw $GW ; 
	echo "Testando GateWay..."
	ping -c2 $GW
	if [ $? -eq 0 ]; then
		echo "Rede configurada com sucesso!"
		sleep 3
		clear
	else
		echo "Falha ao pingar no Gateway!"
		exit
	fi
else
	echo "Falha ao pingar no IP!"
	exit
fi
