#!/bin/sh
#Recebe varios parâmetros e junta todos em uma uunica palavra

echo "$*" | sed 's/ //g' #'subistitui/isso_aqui/por_isso/g' o 'g' informa que serve para todas as ocorrências
