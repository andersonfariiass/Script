#!/bin/bash
#Script que verifica se o diretório existe
if [ -e "/etc/teste" ]
then
echo "O diretório existe"
else
echo "O diretório não exsite"
fi
