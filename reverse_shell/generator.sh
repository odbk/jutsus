#!/bin/bash

while getopts i:s:p:o: option
do
case "${option}"
in
i) IP=$OPTARG;;
p) PORT=$OPTARG;;
s) SHELL=$OPTARG;;
o) OUT=$OPTARG;;
esac
done
PATH="scripts/"
/bin/echo "$PATH$SHELL copiando a $OUT"
/bin/cp $PATH$SHELL $OUT
/bin/sed -i "s/RHOST/$IP/g" $OUT
/bin/sed -i "s/RPORT/$PORT/g" $OUT
