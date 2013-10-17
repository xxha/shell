#!/bin/bash

#judge if $1 is in array, which value is 1-6.
isusb () {
  local var
  for var in "${@:2}"; do [[ "$var" == "$1" ]] && return 0; done
  return 1
}

array1=(1 2 3 4 5 6)

hello=4

isusb $hello "${array1[@]}"
echo $?

isusb 0 "${array1[@]}"
echo $?

isusb "3" "${array1[@]}"
echo $?
