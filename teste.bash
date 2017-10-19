#!/bin/bash

for USER in `grep bash /etc/passwd | cut -d : -f 1`;
do grep $USER /etc/shadow | cut -d : -f 1,2 > passwd.txt
done
tr ':' ';' <passwd.txt> passwd.csv 
