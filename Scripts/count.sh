#!/bin/bash
COUNT=0

for i in `ls $1`

do

COUNT=$((COUNT+1))

done

if [ "$COUNT" -eq 0 ]; then

	echo "Nenhum arquivo encontrado"

elif [ "$COUNT" -eq 1 ]; then

	echo"Apenas 1 arquivo encontrado"

else

	echo "Foram encontrados $COUNT arquivos"

fi
