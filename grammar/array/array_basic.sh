#! /bin/bash

#This script shows the basic usage of array.

#define an array
arr1=(1 2 3 4 5 6 7 8 9 10)
arr2=("xiao" "ming" "ni" "hao" "hello" "world")

#the first member of an array.
echo "----------------------------------------------------"
echo "The first member of arr1 is $arr1"
echo "The first member of arr2 is $arr2"

#the length of an array, also means element number.
echo "----------------------------------------------------"
echo "length of arr1 = ${#arr1[@]}"
echo "length of arr2 = ${#arr2[*]}"

#the length of specific member
echo "----------------------------------------------------"
echo "the length of arr2[1] = ${#arr2[1]}"
echo "the length of arr2[3] = ${#arr2[3]}"
str="hellokity"
echo "the length of specific variable = ${#str}"

#all members of an array
echo "----------------------------------------------------"
echo "all member of arr1 = ${arr1[*]}"
echo "all member of arr2 = ${arr2[@]}"

#certain member of an array
echo "----------------------------------------------------"
echo "the first member of arr1 = ${arr1[0]}"
echo "the second member of arr2 = ${arr2[1]}"

#assian to a certian member of array
echo "----------------------------------------------------"
echo "assign 100 to arr1[1]"
arr1[1]=100
echo "arr1[1] = ${arr1[1]}"
echo "arr1 = ${arr1[*]}"

echo "assign fuck to arr2[5]"
arr2[5]="fuck"
echo "arr2[5] = ${arr2[5]}"
echo "arr2 = ${arr2[@]}"

#unset command
echo "----------------------------------------------------"
unset arr1
echo "after unset arr1, arr1 = ${arr1[*]}"
arr1=(1 2 3 4 5)
echo "after re-assigned, arr1 = ${arr1[*]}"
unset arr1[1]
echo "after unset arr[1], arr1 = ${arr1[*]}"
echo "after unset arr[1], arr1 length = ${#arr1[*]}"

#section
echo "----------------------------------------------------"
arr1=(1 2 3 4 5 6 7 8 9 10)
echo "section 0-3 of arr1 = ${arr1[*]:0:3}"
echo "section 4-7 of arr1 = ${arr1[@]:4:7}"
arr2=(${arr1[@]:3:5})
echo "arr2 = ${arr2[*]}"

#replace string
echo "----------------------------------------------------"
arr1=(1 2 3 4 5)
echo "replace 100 to 3 in arr1:  ${arr1[@]/3/100}"
echo "arr1 = ${arr1[*]}"
arr1=(${arr1[@]/3/100})
echo "after replace 3 with 100, arr1 = ${arr1[*]}"




















