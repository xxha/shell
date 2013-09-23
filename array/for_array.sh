#!/bin/bash

#for int i
array=("hello" "dog" "xxha" "chunzi")

function contained_int ()
{
	for i in "${array[@]}"
	do
		if [ "$i" -eq "$1" ] ; then
			return 0
		fi
	done
	return 1
}
#for string i
function contain_str ()
{
	for i in "${array[@]}"
	do
		if [ "$i" == "$1" ] ; then
			return 0
		fi
	done
	return 1
}

contain_str "xxha"
echo $?

contain_str "fuck"
echo $?

contain_str "chunzi"
echo $?
