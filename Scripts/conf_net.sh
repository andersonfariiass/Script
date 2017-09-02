#!/bin/sh
#Script para configuracao da placa de rede local manual

ifconfig #Usado para listar as interfaces disponiveis
echo

read -p "Qual interface de rede deseja configurar? " INTF #Seta qual interface será configurada
echo
read -p "Informe o IP destinado ao host EX(192.168.1.25): " IP #Armazena qual IP será atribuido a interface
echo 
read -p "Informe a mascara de rede EX(255.255.255.0): "  MASK #Mascara da rede
echo
read -p "Informe o GateWay da rede: " GW #Gateway da rede
echo
sleep 1

clear

echo "Configurando..."
sleep 3

ifconfig $INTF $IP netmask $MASK #Seta as configurações desejadas

echo "Testando o IP adicionado." 
ping -c2 $IP #Testa o IP com um ping
sleep 2

clear

if [ $? -eq 0 ]; then #O $? pega o ultimo resultado do ping e verifica se foi igual a zero, se sim o ping ocorreu com sucesso.
	route add default gw $GW ; #Add a rota default
	echo "Testando GateWay..."
	ping -c2 $GW #Testa o GW com o ping
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
