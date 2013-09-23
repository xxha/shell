#!/bin/sh

#erase an sd card 
dd if=/dev/zero of=$1 bs=1024 count=1

#fdisk an sd card
echo -e "fdisk $1 now..."
fdisk $1 <<eof
n
p
1

16000

n
p
2

48000

n
p
3


w
eof

