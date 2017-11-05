#!/bin/bash
#Script para iniciar as VMs automáticamente.

#Inicia o firewall
sudo virsh start srv-fw
#Inicia o DC
sudo virsh start srv-inf
#Inicia os servidores web
sudo virsh start srv-web01
sudo virsh start srv-web02
#inicia servidor de backup
sudo virsh start srv-bacula
#Inicia o fileserver
sudo virsh start srv-fs
#Inicia servidor de logs
sudo virsh start srv-log
