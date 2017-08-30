#!/bin/sh
#Script para criar uma VM no VirtualBox
#Versao 2.0
#VM='debian_64x' #Declarando o nome da VM

read -p "Informa o nome da VM: " VM
echo
read -p "Informe o local para salvar o disco virtual: " CDISCO
echo
read -p "Informa o tamamho do disco em MB EX(8000): " TDISCO
echo
read -p "Informa a quantidade de Memoria RAM em MB: " TMEM
echo
echo "Listando Sistemas Compativeis: "
sleep 1
	VBoxManage list ostypes #Lista todos os Sistemas que podem ser usandos.
echo
read -p "Informe qual Sistema operacinal: " OSTYPE
echo
read -p "Informe o local do disco de intalação: " CISO
echo "Aguarde um momento..."
sleep 1
clear
echo "Agurade um momento..."
sleep 1
clear
echo "Criando HD..."
	VBoxManage createhd --filename $CDISCO/$VM.vdi --size $TDISCO #Criar HD virtual com $TDISCO GB
echo "HD criado com sucesso!"
sleep 1
clear
echo "Registrando VM..."
	VBoxManage createvm --name $VM --ostype $OSTYPE --register #Criar o a VM e a registra 
sleep 1
clear
echo "Realizando configurações de controladora, discos, memória, rede..."

#Adiciona controladoras SATA
	VBoxManage storagectl $VM --name "SATA Controller" --add sata --controller IntelAHCI
#Faz o attach do disco criado com a VM
	VBoxManage storageattach $VM --storagectl "SATA Controller" --port 0 --device 0 --type hdd --medium $CDISCO/$VM.vdi
#Adiciona a controladora IDE
	VBoxManage storagectl $VM --name "IDE Controller" --add ide
#Faz o attache entre a contraladora e o arquivo de imagem do SO
	VBoxManage storageattach $VM --storagectl "IDE Controller" --port 0 --device 1 --type dvddrive --medium $CISO

#Configurações básica da VM
	VBoxManage modifyvm $VM --ioapic on
	VBoxManage modifyvm $VM --boot1 dvd --boot2 disk --boot3 none --boot4 none
	VBoxManage modifyvm $VM --memory $TMEM --vram 64
	VBoxManage modifyvm $VM --nic1 bridged --bridgeadapter1 wlp2s0
sleep 5
clear
echo "Finalizando..."
clear
echo "Finalizando..."
clear
echo "VM Criada com Suceso!"
sleep 2
clear

read -p "Deseja Iniciar a VM? (s/n): " OP
	if [ "$OP" = "s" ]; then #Verifica se o valor $OP é igual a s
		VBoxManage startvm $VM #Se verdadeiro inicia a VM
		else 
			exit #Se não apenas finaliza!
	fi

clear
