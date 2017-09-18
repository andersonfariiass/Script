#!/bin/sh
#Script para monitorar infomações do host

echo "#----------Memória----------#"

MEM=$(cat /proc/meminfo | grep "Mem" | cut -d "	" -f 2)
echo "$MEM"
echo

echo "#----------CPU----------#"
NCPU=$(cat /proc/cpuinfo | grep -i name | tail -1 | cut -d\: -f 1-3)
#FCPU=$(cat /proc/cpuinfo | grep -i "cpu MHz" | tail -1 | cut -d\: -f 1-3)
CCPU=$(cat /proc/cpuinfo | grep -i "cpu cores" | tail -1 | cut -d\: -f1-3)
CSCPU=$(cat /proc/cpuinfo | grep -i "cache size" | tail -1 | cut -d\: -f 1-3)
echo "$NCPU"
#echo "$FCPU"
echo "$CCPU"
echo "$CSCPU"
echo

echo "#---------Armazenamento----------#"
echo "$(df -H | grep /sd)"
echo

echo "#----------Usários Conectados----------#"
USR=$(whoami)
echo "$USR"
echo

echo "#----------Time---------#"
echo "O sistema foi iniciado há: $(uptime -s)"
echo "O sistema está ligado há: $(uptime -p)"
echo 

echo "#----------Rede---------#"
IP="8.8.8.8"
ping -qc3 $IP > /dev/null
#CONN=$(ping -qc1 8.8.8.8 | grep received | cut -d "" -f 4)
if [ "$?" -ne 1 ]; then
	echo "Conectado com a internet!"
	echo "Informações de interface de rede:"
	echo "$(ip add | grep inet)"
else
	echo "Sem conexão com a internet!"
fi
#REDE=$(ip add | grep inet)
#echo "$(ip add | grep inet)"
