#!/bin/bash 
#Script para 3 questão da prova
#Aluno: Anderson dos Santos Farias

$(cat /etc/passwd | grep -e "/bin/bash" -e "/bin/false"  | cut -d\: -f 1 && sudo cat /etc/shadow | cut -d\: -f 2) > temp.txt
