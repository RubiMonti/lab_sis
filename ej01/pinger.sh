#!/bin/sh


N=$1
shift
ex=0

if !(ping -W1 -c$N www.google.com 1</dev/null)
then
	echo El número introducido no es válido
	exit 1
fi

for file in $*
do
	for i in $(cat $file)
	do
		if !(ping -W1 -c$N $i 1</dev/null 2>/dev/null)
		then
			echo no existe $i
			mv $1 $1".down"
			ex=1
			break
		fi
	done
done
exit $ex
