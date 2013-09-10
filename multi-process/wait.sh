#!/bin/sh

i=1
for i in `seq 10`
do
	echo "$i"
	multiply=`expr $i \* 10`
	echo "multiply = $multiply"
	sleep $multiply  &
done
wait

