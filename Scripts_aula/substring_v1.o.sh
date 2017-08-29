#!/bin/sh
#version: 1.0
#Recebe duas strings e verifica se há ocorrência da primera dentro da segunda
str=$1
str2=$2
test $# -ne 2 && exit #Verifica se a quantidade de paramentros e maior que 2
echo $str2 | grep -qs $str && echo "$str está contida em $str2" #verifica se na segunda palavra existe alguma ocorrencia da primeira e a exibe.
