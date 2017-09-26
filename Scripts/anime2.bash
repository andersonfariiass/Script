#!/bin/bash

function Anime1(){
	local i=2
	while [[ ! -z $(ps | grep "$!") ]]; do
	printf "Processando [		]" | sed "s/ /\-\>/$i"
	printf "\r"
	sleep 0.05
	((i++))
	if [ "$i" == 11 ]; then
		for ((i;i>2;i--)); do
			printf "Processando [		]" | sed "s/ /\<\-/$i"
			printf "\r"
			sleep 0.05
		done
	fi
done
printf "Processando [----feito----]\n"
}

function Anime2(){
	spinner=(\ \| / -)
	while [[ ! -z $(ps | grep "$!") ]]; do
		i=0
		for ((i;i<4;i++)); do
		printf "Processando [${spiner[i]}]"
		sleep 0.20
		printf "\r"
		done
	done
printf "Processando [*]\n"
}

sleep 2 & Anime1
sleep 2 & Anime2
