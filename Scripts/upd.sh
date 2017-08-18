#!/bin/sh

ping -q -c5 localhost > /dev/null

if [ $? -eq 0 ]
then
	sudo apt update
	echo "OK"
fi
