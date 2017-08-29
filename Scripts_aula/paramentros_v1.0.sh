#!/bin/sh
i=0
while test "$1"
do 
	i=$((i+1))
	echo "Parametros $i: $1"
	shift
done
