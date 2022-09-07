#!/bin/bash

#¿how old are you?

read -p "Enter you year of birth: " YEAR
read -p "Enter you month of birth: " MONTH
read -p "Enter you day of birth: " DAY
EDAD=$(($(date +%Y)-$YEAR))
if [ $(date +%m) -lt $MONTH ]; then
	EDAD=$(($EDAD-1))
elif [ $(date +%m) -eq $MONTH -a $(date +%d) -lt $DAY ]; then
	EDAD=$(($EDAD-1))
fi
echo Tienes $EDAD years
