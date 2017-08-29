#!/bin/sh
#Scrip que exibi todos os enderecos IPV4 da maquina

ifconfig | grep "inet end.:" 
