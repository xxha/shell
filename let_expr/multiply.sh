#!/bin/bash

test1=10
for i in `seq 10`
do
	echo "i = $i"
	echo "test = $test1"

	multiply1=`expr $i \* $test1`
	echo "multiply1 = $multiply1"

	multiply2=$(($i * $test1))
	echo "multiply2 = $multiply2"

	multiply3=$[ $i * $test1 ]
	echo "multiply3 = $multiply3"

done
