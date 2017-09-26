#!/bin/bash
#Script com interação com o usuário

clear
echo "#----OPÇÔES----#"
echo
$(date)
echo

echo "#----MENU-----#"
echo "1 - Verificar filesystem"
echo "2 - Particionar disco"
echo "3 - Montar/Desmontar CDROM"
echo "4 - Sair"

read -s OP

if [ "$OP" == 1 ]; then
	clear
	echo "#----FileSystem----#" 
	df -h | head -n1
	df -h | grep -e /hd  -e /sd
fi

#Executa o cfdisk
if [ "$OP" == 2 ]; then
	clear
	sudo cfdisk
fi

if [ "$OP" == 3 ]; then
	clear
	echo
	echo "1 - Montar CDROM"
	echo "2 - Desmontar o CDROM"
	read CMD
	
	if [ "$CMD" == 1 ]; then
		mount /dev/cdrom
		clear
		echo "CDROM Montado!"
	fi
	if [ "$CMD" == 2 ]; then
		umount /dev/cdrom
		clear
		echo "CDROM desmontado!"
	fi
	#Controle de saida do utilitário
	if [ $CMD != 1 ];then
		if [ $CMD != 2 ]; then
			clear
			echo "Comando Inválido!"
		fi
	fi
fi
if [ "$OP" == 4 ]; then
	clear 
	exit
fi

#Controle de erro
if [ "$OP" != 1 ]; then
	if [ "$OP" != 2 ]; then
		if [ "$OP" != 3 ]; then
			if [ "$OP" != 4 ]; then
				clear
				echo "Comando Inválido!"
			fi
		fi
	fi
fi
