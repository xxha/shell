#!/bin/sh

test1="0"
test2="0"
test2="0"

if [ $test1 -eq 0 -a $test2 -eq 0 ]; then
	echo "test1 and test 1 all 0"
fi
if [ $test1 -eq 0 -o $test2 -eq 0 ]; then
	echo "test1 and test 1 are 0"
fi
