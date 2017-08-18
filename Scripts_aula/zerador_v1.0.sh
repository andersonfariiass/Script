#!/bin/bash
#version: 1.0
#Recebe um numero e dimuniu ate chegar em zero
num=$1
if [ $num -gt 0 ]; then
	while [ $num -ge 0 ]; do
		echo -n "$num "
		num=$((num-1))
		#echo -n "$num "
		sleep 1
	done
else 
	echo "O numero já é zero ou negativo!"
fi
echo
