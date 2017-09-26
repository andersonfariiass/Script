#!/bin/bash

read -p "Desejar chamar a funcao(S/N): " OP

echo "$OP" | tr 'a-z' 'A-Z'

if [ "$OP" == S ]; then
	source funcao.bash
else
	echo "Saindo"
fi
