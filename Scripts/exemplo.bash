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

read OP

if [ "$OP" == 1 ]; then
	clear
	echo "#----FileSustem----#" 
	$(df -h | grep -e /sd -e /hd)
fi


