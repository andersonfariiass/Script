#!/bin/sh
echo "Conteudo do diretorio corrente" > arqdir
echo
for arq in $(ls)
do
	echo $arq >> arqdir
done
echo

cat arqdir
dir=`pwd`

echo "Nome dos arquivos em $dir estão em \"arqdir\""
