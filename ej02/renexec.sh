#!/bin/sh

NUM=$#

if (test $NUM -gt 2)
then
	echo Más de dos parametros introducidos
	exit 1
fi
if (test $NUM -lt 1)
then 
	echo Faltan parámetros en la llamada
	exit 1
else 
	if (test $NUM -eq 2)
	then
		SUF=.$2
	else
		SUF=.exec
	fi
fi

echo $SUF
echo calvooo

for file in $(find $1 -perm /111 -type f)
do
	echo file = $file	
	mod=$(echo $file | rev | sed -E 's/[a-zA-Z]*\.//' | rev)
	mod=$(echo $mod$SUF)
	echo mod = $mod
	mv $file $mod
done

echo calvoooo
