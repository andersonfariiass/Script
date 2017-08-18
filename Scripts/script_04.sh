#!/bin/bash
#for line in $(cat etc.txt)
#do
#echo "$line"
#done

while read LINE
do
echo $LINE
done < etc.txt
