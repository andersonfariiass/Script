#!/bin/sh
#version: 1.1
#relação entre dois números
echo "Argumentos recebidos; $1, $2"
test $1 -lt $2 && echo "O $1 é menor que o $2"
test $1 -gt $2 && echo "O $1 é maior que o $2"
test $1 -eq $2 && echo "Números Iguais"
