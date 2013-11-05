#!/bin/bash

n=20
echo "old n = $n"

#expr operation
n=`expr $n + 1`
echo "n+1 = $n"

n=`expr $n - 2`
echo "n - 2 = $n"

