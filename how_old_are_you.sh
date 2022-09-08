#!/bin/bash


#¿how old are you?

read -p "Enter your name: " NAME
read -p "Enter your year of birth: " YEAR
read -p "Enter your month of birth: " MONTH
read -p "Enter your day of birth: " DAY
EDAD=$(($(date +%Y)-$YEAR))
if [ $(date +%m) -lt $MONTH ]; then
	EDAD=$(($EDAD-1))
elif [ $(date +%m) -eq $MONTH -a $(date +%d) -lt $DAY ]; then
	EDAD=$(($EDAD-1))
fi
echo $NAME","  tienes $EDAD years
