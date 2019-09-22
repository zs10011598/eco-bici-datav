#!/bin/bash

url="https://www.ecobici.cdmx.gob.mx/sites/default/files/data/usages/"

echo "downloading data ..."

mkdir -p data

for ((y=2010; y<=2018; y++))
do
	for i in {01..12}
	do
		if [ -f "./data/${y}-${i}.csv" ] 
		then
			echo "ya existe ${y}-${i}.csv"
    	else
			wget -P ./data/ "${url}${y}-${i}.csv"
		fi
	done
done


for i in {01..06}
do
	wget -P ./data/ "${url}2019-${i}.csv"
done
