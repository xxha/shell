#!/bin/bash

usbdev=0
for usbdev in `seq 5`; do
	usbx=`expr $usbdev - 1`
	host=`expr $usbx \* 5 + 1`
	sub=`expr $usbx \* 5 + 2`
	x86_ip="128.0.0.$host"
	arm_ip="128.0.0.$sub"
done
echo "x86_ip = $x86_ip"
echo "arm_ip = $arm_ip"
