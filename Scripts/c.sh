#!/bin/bash
# Autor: fabiobarrinovo@yahoo.com.br
#-----------------------------------------------------------------
clear
echo "============UTILITARIO============"
echo ""
date
echo ""
#-----------------------------------------------------------------
#----MENU
echo "(1) Verificar filesystem montados"
echo "(2) Particionador do sistema"
echo "(3) Montar/Desmontar FLOPPY"
echo "(4) Montar/Desmontar CDROM"
echo "(5) Para Sair"
echo ""
#-----------------------------------------------------------------
#----LE O COMANDO DIGITADO
read cmd
#-----------------------------------------------------------------
#----VERIFICA OS SISTEMAS MONTADOS
if [ $cmd == 1 ] ; then
  clear
  echo "======================================================"
  df -h
fi
#-----------------------------------------------------------------
#----EXECUTA O CFDISK
if [ $cmd == 2 ] ; then
  clear
  cfdisk
fi
#-----------------------------------------------------------------
#----MONTA/DESMONTA O FLOPPY
if [ $cmd == 3 ] ; then
  clear
  echo "============================"
  echo "(1) Para montar o FLOPPY"
  echo "(2) Para desmontar o FLOPPY"
  read cm
  
  if [ $cm == 1 ] ; then
    mount /dev/fd0
    clear
    echo "Floppy montado"
  fi
  
  if [ $cm == 2 ] ; then
    umont /dev/fd0
    clear
    echo "Floppy desmontado"
  fi
  
  if [ $cm != 1 ] ; then
    if [ $cm != 2 ] ; then
      clear
      echo "Comando inválido"
    fi
  fi
fi
#-----------------------------------------------------------------
#----MONTA/DESMONTA O CDROM
if [ $cmd == 4 ] ; then
  clear
  echo "============================"
  echo "(1) Para montar o CDROM"
  echo "(2) Para desmontar o CDROM"
  read cm
  
  if [ $cm == 1 ] ; then
    mount /dev/cdrom
    clear
    echo "Cdrom montado"
  fi
  
  if [ $cm == 2 ] ; then
    umont /dev/drom
    clear
    echo "Cdrom desmontado"
  fi
  
  if [ $cm != 1 ] ; then
    if [ $cm != 2 ] ; then
      clear
      echo "Comando inválido"
    fi
  fi
fi
#-----------------------------------------------------------------
#----SAI DO UTILITARIO E LIMPA A TELA
if [ $cmd == 5 ] ; then
  clear
fi
#-----------------------------------------------------------------
#----CONTROLE DE ERRO
if [ $cmd != 1 ] ; then
  if [ $cmd != 2 ] ; then
    if [ $cmd != 3 ] ; then
      if [ $cmd != 4 ] ; then
        if [ $cmd != 5 ] ; then
	  clear
	  echo "Comando inválido"
	fi
      fi
    fi
  fi
fi