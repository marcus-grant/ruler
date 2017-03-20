#!/bin/bash

rulerString=""
count=0
remainder=0

for count in {1..80}
do
	remainder=$(($count%10))
	if [ $remainder -eq 0 ]; then
		rulerString=$rulerString"|"
	elif [ $remainder -eq 5 ]; then
		rulerString=$rulerString":"
	else
		rulerString=$rulerString"."
	fi
done

echo $rulerString

