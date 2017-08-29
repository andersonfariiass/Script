#!/bin/sh
#version: 1.0
#Recebe duas strings e verifica se há ocorrência da primera dentro da segunda
str=$1
str2=$2
test $# -ne 2 && exit
echo $str2 | grep -qs $str && echo "$str está contida em $str2"

