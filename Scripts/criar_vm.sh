#!/bin/sh
#Script para criar uma vm no virtual box
#O SO da VM será o debian-netinst-8.7.1
#Versão do Script: v1.0

#Cria a VM
VBoxManage createvm --name "debian_viascript" --ostype Debian --register --basefolder /media/anderson/Data/VMs/

echo "Qual VM deseja modificar [digite exatamento o nome da VM]: "
read VMNAME
echo 
echo "Quantida de Memoria RAM: "
read RAM
echo
echo "Informe o caminho da iso do SO desejado: "
read ISO


VBoxManage modifyvm "$VMNAME" --memory $RAM --nvram 64 --acpi on --boot1 $ISO --nic1 bridged --bridgeadapter1 wlp2s0

echo "Sucesso!"
