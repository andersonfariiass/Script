#!/bin/sh
#Script para criar usuario do sistema
read -p "Informe qual o login do novo usuário: " USR
echo
sudo adduser $USR --disabled-login --home /home/$USR/  --shell /bin/bash --ingroup users #Criar o usuário, define seu diretório /home/, defina qual shell, e add ao grupo de usuários.

echo "Add permissões necessárias!"
#sudo chown -R $USR:$USR /home/$USR/
sudo chmod 722 /home/$USR/

(echo $USR ; echo $USR) | sudo passwd $USR #Seta a senha igual ao login do usuário

echo "Usário $USR criado, a senha do usuário é \"$USR\""

