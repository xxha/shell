#!/bin/sh

# assign variable from command line.
var=$(cat /sys/bus/usb/devices/1-1.1/idProduct)
echo "var = $var"

var1=$(echo "fuck you")
echo "var1 = $var1"
