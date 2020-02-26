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

#Dos opciones:

#ls -lRa para ver los archivos junto con sus permisos pero habria que ver un amanera de filtrarlos para dejar solo los que son ejecutables

#find -type f para ver todos los archivos, pero habria que hallar una manera de ver sus permisos

for file in $(find $1 -type f)
do
	mod=$(echo $file | rev | cut -f1 -d '/' | rev)
	echo mod = $mod

	echo calvo
	echo $file
	echo $mod
	if (test -x $mod)
	then
		echo siii #quitar la extension y meter la otra
	fi
done
