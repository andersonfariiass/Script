#!/bin/bash
clear
echo "
          +---------------------------+
          | Estou procurando todos os |
          | arquivos de log do disco. |
          |                           |
          |   ISTO PODE DEMORAR!!!    |
          +---------------------------+"
#seleciono a partir do diretorio /, os arquivos comuns (-type f)
#cujo nome termine em .log (-name \*.log)
#e com tamanho > 1.000.000 caracteres (-size +1000000c)
BigLogs=`find / -type f -name \*.log -size +1000000c -print`
#Se eu simplesmente deixar somente os 100 ultimos registros
#de cada arquivo, fa(ss)o:
echo -e "\n\nPesquisa terminada, 
encolhendo os seguintes logs:"
for Arq in $BigLogs
do
	echo $Arq
	tail -100 $Arq > /tmp/$$ # guardo os 100 ultimos em /tmp/$$
	mv /tmp/$$ $Arq
done
