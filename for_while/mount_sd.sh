#!/bin/sh

#try to mount /dev/sdbx, x=[1-100]
for i in `seq 100`; do
	echo "you are a kid!"
	echo "sdb$i"
	if [ -b /dev/sdb$i ]; then
		echo "find /dev/sdb$i"
		mount /dev/sdb$i /mnt/test
		if [ -f /mnt/test/tx300s-veex-rootfs-arm.tar.gz ]; then
	
			echo "find image."



		else
			echo "no image."
			umount /dev/sdb$i
			continue
		fi
	else
		echo "no /dev/sdb$i, break."
		break
	fi
done
