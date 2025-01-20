#!/bin/sh

status=$(stat main.tex | fgrep Modify)

while true; do
	sleep 3
	if [ "$status" != "$(stat main.tex | fgrep Modify)" ]; then
		#echo unequal
		./go.sh
		status=$(stat main.tex | fgrep Modify)
	fi
done &

