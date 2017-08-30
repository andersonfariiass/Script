#!/bin/sh
#Esse script verifica qual e a distro linux.

if [ -f /etc/debian_version ] #verifica se o arquivo /etc/debain_version é um arquivo normal.
then
  LINUX_DISTRO="Debian" #Se existir a variavel armazena a versao  da distro debian
else
  if [ -f /etc/redhat-release ] #Caso o primeiro if seja falso, verifica-se se o arquivo /etc/redhat-release é um arquivo normal
  then
      LINUX_DISTRO="Redhat" #Se verdadeiro a variavel armazena a versao da distro redhat
  else
      if [ -f /etc/SuSE-release ] #Caso o teste anterior seja falso, testa se o arquivo /etc/SuE-release é um arquivo normal
      then
	 LINUX_DISTRO="Suse" #Se verdadeido a variavel armazena aversao da distro Suse
      else
	 LINUX_DISTRO="Other" #Caso nenhum teste seja verdadeiro a variavel armazana um valor informando que é uma outra versão.
      fi
   fi
fi	

echo "Versao Linux: $LINUX_DISTRO" #exibi qual a versao da distro
