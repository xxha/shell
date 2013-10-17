#!/bin/bash
clear

#using for by seq
for i in `seq 100`
do
	if ((i%3==0))
		then
		echo $i
		continue
	fi
done

