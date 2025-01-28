#!/bin/sh

status=$(stat main.tex | fgrep Modify)

while true; do
	sleep 3
	if [ "$status" != "$(stat main.tex | fgrep Modify)" ]; then
		status=$(stat main.tex | fgrep Modify)
		./go.sh
	fi
done &

