#!/bin/bash

if [ "$1" = "memoria" -o "$1" = "ram" ]; then
	echo "Infor Memória"
	MEM=$(awk '{print $0}' /proc/meminfo | grep Mem)
	echo "$MEM"

elif [ "$1" = "disco" -o "$1" = "armazenamento" -o "$1" = "hd" ]; then
	DISK=$(df -laH | awk '{print $0}' | grep -e /sd -e /hd)
	echo "$(df -h | head -n1)"
	echo "$DISK"

elif [ "$1" = "processador" -o "$1" = "cpu" ]; then
	NCPU=$(awk '{print $0}' /proc/cpuinfo | grep name | tail -1)
	echo "Info processador"
	echo "$NCPU"
fi
