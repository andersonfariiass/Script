#!/bin/bash
#Script para listar usuario, uso de disco e diretório atual
echo "Abaixo sera exibido o usuário atual"
	whoami
echo "Abaixo será mostrado o uso do Disco"
	df -h
echo "Abaixo será exibido qual o diretório atual"
	cd /etc/
	pwd
echo "Memoria Livre"
	free
