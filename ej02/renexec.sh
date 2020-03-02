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

for file in $(find $1 -perm /111 -type f)
do	
	mod=$(echo $file | rev | sed -E 's/[a-zA-Z]*\.//' | rev)
	mod=$(echo $mod$SUF)
	mv $file $mod
done
