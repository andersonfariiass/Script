#!/bin/sh

quadrado(){

	read -p "Digite um numero entre 2 e 10: " V 
	echo "Vamos calcular o quadrado do numero digitado"
	#return $[ $V * $V ]
	#return $( $valor * $valor )
	result=$(($V * $V))
}

quadrado

echo "Resultado: $result"
