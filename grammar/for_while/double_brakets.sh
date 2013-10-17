#!/bin/bash
clear

#output the number which can be divided by 3,  in 1-100,
for ((i=1;i<100;i++))
	do
	if ((i%3==0))
	then
		echo $i
		continue
	fi
done
