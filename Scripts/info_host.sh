#!/bin/sh
#Script para obter informações de maquina

#Memoria

MEM="$(cat /proc/meminfo | grep "\MemTotal" | cut -d\: -f 2)"
MEM="$(echo ${MEM})"

#echo "$MEM"

#Processador

NPROC="$(cat /proc/cpuinfo | grep -i processor | wc -l)"
NPROC="$(echo ${NPROC})"

#Modelo do processador
PROC="$(cat /proc/cpuinfo | grep "\model name" | tail -1 | cut -d\: -f 2)"
PROC="$(echo ${PROC})"

#Disco
DISCO=$(fdisk -l | grep Disk | egrep -v "identifier" | cut -d ' ' -f 2-4 | cut -d ',' -f 1)

echo " "
echo  -e '\033[32;1m ==== Info Hardware === \033[m'

cat<<EOT
Hostname	: $(hostname)
Memoria		: ${MEM}
Processador	: [ ${NPROC} ] ${PROC}
Disco(s)	:
$DISCO

EOT

echo " "
echo -e '\033[32;1m === Infor Rede === \033[m'

#Rede 

NIC=$(ip addr list | grep BROADCAST | awk -F ':' '{print $2}' | tr '\n' ' ')

#Gateway

for i in $NIC
do
	IP=$(ifconfig $i | egrep -o "[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}" | tail -3 | head -1)
	BCAST=$(ifconfig $i | egrep -o "[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}" | tail -2 | head -1)
	MASK=$(ifconfig $i | egrep -o "[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}" | tail -1 | head -1)
	REDE=$(ip ro | egrep "[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\/[1-3]{1,2}.*$i.$IP" | egrep -o "[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\/[1-3]{1,2}")

	MAC_ADDR=$(ifconfig wlp2s0 | grep -o -E '([[:xdigit:]]{1,2}:){5}[[:xdigit:]]{1,2}')

ip ro | grep -o "default equalize" > /dev/null

if [ $? -eq 0 ]; then
	GW=$(ip ro | egrep " *nexthop.*$i" | egrep -o "[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}")
else
	GW=$(ip ro | egrep  ".*default.*$i" | egrep -o "[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}")   

fi

	

	if [ $IP != $IP ]; then

   	echo "Interface: $i"

		echo "Endereco IP .......: -----"

		echo " "

	else

		echo "Interface .........: $i"

		echo "Endereco IP .......: $IP"

		echo "Endereco Fisico ...: $MAC_ADDR"

		echo "Broadcast .........: $BCAST"

		echo "Mascara:...........: $MASK"

		echo "Rede ..............: $REDE"

		echo "Gateway ...........: $GW"

		echo " "

	fi

done

DNS=$(awk '/nameserver/ {print $2}' /etc/resolv.conf | tr -s '\n' ' ')

		echo -e "DNS Servers........: $DNS"



echo
