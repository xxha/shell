#! /bin/bash

#########################################################
# This scipt is used to check sub-directory,such as:
# 	check file exists or not on every sub-directory.
# 	copy a file to every sub-directory.
#
# 	author: Lindell.Xu
#	date: 2013.10.17
#########################################################

if [ 'x' == 'x'$1 ]; then
	echo "Usage: "
	echo "		$0 subdir"
	exit 1
fi

#list all directoy, and give it to variable dir_arr.
dir_arr=$(find $1 -type d -print;)

for dir in ${dir_arr[*]}; do
	if [ -f "$dir/Makefile" ]; then
		echo "Makefile exists in $dir"
	else
		echo "copy Makefile to $dir"
		cp Makefile $dir/Makefile
	fi
done

