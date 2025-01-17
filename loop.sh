#!/bin/sh

status=$(stat main.tex)

while true; do
	sleep 30
	if [ "$status" != "$(stat main.tex)" ]; then
		#echo unequal
		./go.sh
		status=$(stat main.tex)
	fi
done &

