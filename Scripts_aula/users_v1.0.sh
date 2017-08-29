#!/bin/bash
#Mostra os usuários do arquivo /etc/passwd e nome completo de cada usuário do sistema
cat /etc/passwd | awk -F":" '{print $1, $5}'
