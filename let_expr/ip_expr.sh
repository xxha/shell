#!/bin/bash


usbx=(0 1 2 3 4 5)

for i in ${usbx[*]}
do
	x86_ip=`expr $i \* 5 + 1`
	arm_ip=`expr $i \* 5 + 2`
	echo $i
	echo "x86_ip =" $x86_ip
	echo 128.0.0.$x86_ip
	echo "arm_ip = $arm_ip"
	echo "128.0.0.$arm_ip"
done
