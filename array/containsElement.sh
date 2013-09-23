#!/bin/bash


# used to judge if $1 is contained in array.
containsElement () {
  local e
  for e in "${@:2}"; do [[ "$e" == "$1" ]] && return 0; done
  return 1
}

array1=("something to search for" "a string" "test2000")

hello="a string"

containsElement "$hello" "${array1[@]}"
echo $?

containsElement "blaha" "${array1[@]}"
echo $?

containsElement "something to search for" "${array1[@]}"
echo $?
