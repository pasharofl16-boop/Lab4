#!/bin/bash
THRESHOLD=80
CURRENT=$(df / | grep / | awk '{ print $5}' | sed 's/%//g')
if [ "$CURRENT" -gt "$THRESHOLD" ]; then
	echo "Vnimanie : Disk zapolnen na $CURRENT%" | mail -s "Disk Alert" root
fi
