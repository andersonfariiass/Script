#!/bin/bash

if [ "$1" = "memoria" -o "$1" = "ram" ]; then
	echo "Infor Memória"
	awk -F':' '/Mem/{print $0}' /proc/meminfo

elif [ "$1" = "disco" -o "$1" = "armazenamento" -o "$1" = "hd" ]; then
	df -h | awk '/Filesystem/ || /sd/ || /hd/{print $0}'

elif [ "$1" = "processador" -o "$1" = "cpu" ]; then
	echo "Info processador"
	awk '/name/{print $0}' /proc/cpuinfo | tail -1

else
	echo "Parâmetro incorreto!"	
fi
