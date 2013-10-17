#!/bin/bash

slot_array=("LA" "LB" "LC" "RA" "RB" "RC")

echo "slot array is (${slot_array[@]})"

#iterates an array
for location in ${slot_array[@]} 
do
	echo "location = $location"
done

