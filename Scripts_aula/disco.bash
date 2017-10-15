#!/bin/bash
#Script que verifica o uso do disco
#df - h obtem informações referente a disco
#tr -s '' substitui uma seguência de espaços por um espaço simples
#grep faz filtro na saida do comando bsucando pelo padrão informado como parâmetro
#head -n1 exibe somente a primeira linda da saida 
echo "#----Informações sobre o disco----#"

#DISCO=$(df -h | tr -s " " | grep -i /dev)
DISK=$(df -h | tr -s '' | grep -i /home) #Salva a saida do df no variável
#echo $DISCO

if [ -z "$DISK" ] #Verifica se o conteúdo da variável é nulo ou não
then
	#Se for nulo significa que o /home não está em partição separada
	echo "O diretorio /home nao esta em particao separada!"
	echo "$(df -h | head -n1 | tr -s '')"
	echo "$(df -h | grep -e /sd  -e /hd | tr -s '')"
else
	#Se não for nulo significa que /home está em partição separada e em seguinda exibi informaçoes do /home
	echo "Uso da particao /home."
	echo "$(df -h | head -n1 | tr -s '')"
	echo "$DISK"
	echo
	echo "#----Uso Geral---#"
	echo "$(df -h | grep -e /sd -e /hd | tr -s '')"
fi
