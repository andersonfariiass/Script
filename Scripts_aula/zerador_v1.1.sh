#!/bin/sh
#version: 1.1
num=$1
while test $num -ge 0
do
	echo -n "$num "
	num=$((num-1))
done
echo
