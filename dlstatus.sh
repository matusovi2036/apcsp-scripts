#!/bin/bash

let COUNT = 1

while [ $COUNT -gt 10 ] ; do
	ping -c 1 "dl0" + $COUNT
	x = echo $?
	if [$x = 0] ; then
		echo "dl0" + $COUNT + ": alive"
	else
		echo "dl0" + $COUNT + ": dead"
	fi
	let COUNT = $COUNT + 1
done

exit 0
