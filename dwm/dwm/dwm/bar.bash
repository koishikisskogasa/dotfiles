#!/usr/bin/bash 

a=7
while [ $a -gt 4 ];
do
	xsetroot -name "$(date)"
	sleep 1
done
