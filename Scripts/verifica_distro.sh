#!/bin/sh
#Esse script verifica qual e a distro linux.

if [ -f /etc/debian_version ] #verifica se o diretorio /etc/debain_version existe.
then
  LINUX_DISTRO="Debian" #Se existir a variavel armazena a versao  da distro debian
else
  if [ -f /etc/redhat-release ] #Caso o primeiro if seja falso, verifica-se se existe o diretorio /etc/redhat-release
  then
      LINUX_DISTRO="Redhat" #Se verdadeiro a variavel armazena a versao da distro redhat
  else
      if [ -f /etc/SuSE-release ] #Caso o teste anterior seja falso, testa se existe o diretorio /etc/SuE-release
      then
	 LINUX_DISTRO="Suse" #Se verdadeido a variavel armazena aversao da distro Suse
      else
	 LINUX_DISTRO="Other" #Caso nehum teste seja verdadeiro a variavel armazana um valor informando que a versao uma qualquer.
      fi
   fi
fi	

echo "Versao Linux: $LINUX_DISTRO" #exibi qual a versao da distro
