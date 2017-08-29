#!/bin/sh
echo "Deseja fazer a atualização do sistema [S/N]: "
read OP

#OP=$($OP | tr 'a-z' 'A-Z')
#echo "$OP"
[ "$OP" = "N" ] && exit
[ "$OP" = "S" ] && echo "Verificanddo conexão com a internet!"

echo "Testando conexão com a internet!"
ping -qc 5 localhost > /dev/null
echo

if [ $? -eq 0 ]; then
	#echo "Disite a senha de admin!"
	sudo apt update
	echo
	sudo apt upgrade -y
else
	echo "Sem conexão, verique a conexão com a rede!"
fi
echo
echo "Sistema Atualizado"
