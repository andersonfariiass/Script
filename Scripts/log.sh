#!/bin/bash
clear #limpa a tela
echo "
          +---------------------------+
          | Procurando todos os       |
          |  arquivos de log do disco |
          |                           |
          |                           |
          |   ISTO PODE DEMORAR!!!    |
          +---------------------------+"
#Logs=`find / -type f -name \*.log -size +1000000c -print`

sudo find / -type f -name \*.log  > log.txt #Procura todos os logs do sistema, e salva a listagem no arquivo log.txt
cat log.txt #exibi o arquivo log.txt
