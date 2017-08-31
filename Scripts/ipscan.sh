#!/bin/sh
#Script para realizar um scan em uma determinada rede
read -p "Digite a faixa de IP Ex(10.0.0.1-255): " FIP
echo

REDE=$(echo "$FIP" | cut -d "." -f 1-3) #Retira o endereco de rede
END=$(echo "$FIP" | cut -d "." -f 4 | cut -d "-" -f 1) #Retira o primeiro endereco
END_F=$(echo "$FIP" | cut -d "." -f 4 | cut -d "-" -f 2) #Retira o ultimo endereco
END_F=$((END_F - 1)) #Diminiu um do endereco final por ser o endereco de boradcast

echo "REDE: $REDE"
echo "IP Inicial: $REDE.$END"
echo "IP Final: $REDE.$END_F"

while [ "$END" -le "$END_F" ] #Enquando o ip inicial for menor que o ip final, ou seja, enquanto houver ips
do

	ping -c 1 "$REDE"."$END" > /dev/null #o -c 1 retorna apenas um ping, o -W 1 segundo de espera por ping, "$REDE"."END_I" concatena o ip de rede com o ip do host

	if [ "$?" -ne 1 ]; then #Pega o ultimo resultado do ping com o $?
		#NOME=$(nslookup "$REDE"."$END" | grep "name=" | cut -d \= -f 2 )
		#se o ultimo resultado do ping for diferente de 1, o hots esta no estado de UP
		echo -e "$REDE.$END: Estado -> \033[0;32mUP\033[0m | `nslookup "$REDE"."$END" | fgrep "name" | cut -d \= -f2`"
		IPON=$(( $IPON + 1 )) #Conta quanto hosts estao UP
	else
		#Se o if for falso, o host esta no estado de UP
		echo -e "$REDE.$END: Estado -> \033[0;31mDOWN\033[0m"
		IPOFF=$(( $IPOFF + 1 )) #Conta quantos host estao DOWN
	fi
	END=$(( $END + 1 )) #incrementa o endereco atual
done

echo "Hosts UP: $IPON"
echo "Hosts OFF: $IPOFF"
