#!/bin/bash
#Mostra todos os shells do arquivo /etc/passwd
cat /etc/passwd | cut -d : -f 7 | sort | uniq
