#!/bin/sh
#Script para criar uma VM no VirtualBox
#Versao 1.1
VM='debian_64x' #Declarando o nome da VM

echo "Criando HD..."
	VBoxManage createhd --filename /media/anderson/Data/VMs/$VM.vdi --size 8000 #Criar HD virtual com 8GB
echo "HD criado com sucesso!"
	sleep 1
	clear
echo "Registrando VM..."
	VBoxManage createvm --name $VM --ostype "Debian_64" --register #Criar o a VM e a registra 
	sleep 1
	clear
echo "Realizando configurações de controladora, discos, memoria, rede..."

#Adiciona controladoras SATA
	VBoxManage storagectl $VM --name "SATA Controller" --add sata --controller IntelAHCI
#Faz o attach do disco criado com a VM
	VBoxManage storageattach $VM --storagectl "SATA Controller" --port 0 --device 0 --type hdd --medium /media/anderson/Data/VMs/$VM.vdi
#Adiciona a controladora IDE
	VBoxManage storagectl $VM --name "IDE Controller" --add ide
#Faz o attache entre a contraladora e o arquivo de imagem do SO
	VBoxManage storageattach $VM --storagectl "IDE Controller" --port 0 --device 1 --type dvddrive --medium /media/anderson/Data/Torrent/Sistemas/debian-8.7.1.iso

#Configurações básica da VM
	VBoxManage modifyvm $VM --ioapic on
	VBoxManage modifyvm $VM --boot1 dvd --boot2 disk --boot3 none --boot4 none
	VBoxManage modifyvm $VM --memory 512 --vram 64
	VBoxManage modifyvm $VM --nic1 bridged --bridgeadapter1 wlp2s0
	sleep 1
	clear
echo "Processo finalizado!"

read -p "Deseja Iniciar a VM? (s/n): " OP
	if [ "$OP" = "s" ]; then
		VBoxManage startvm $VM #Inicia a VM criada
		else 
			exit
	fi

clear
