#!/bin/sh

NUM=$#

if (test $NUM -eq 1)
then
	SUF=exec
else
	SUF=$2
fi

#Dos opciones:

#ls -lRa para ver los archivos junto con sus permisos pero habria que ver un amanera de filtrarlos para dejar solo los que son ejecutables

#find -type f para ver todos los archivos, pero habria que hallar una manera de ver sus permisos

