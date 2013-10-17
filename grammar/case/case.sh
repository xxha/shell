#!/bin/bash
   case "$1" in
   x86|i*86)
      linux_arch=i386
      xenomai_arch=x86
      x86_arch_bits=32
      ;;
   x86_64|x8664|amd64|emt64)
      linux_arch=x86_64
      xenomai_arch=x86
      x86_arch_bits=64
      ;;
   ppc|ppc32)
      linux_arch=ppc
      xenomai_arch=powerpc
      ;;
   ppc64|powerpc64)
      linux_arch=ppc64
      xenomai_arch=powerpc
      ;;
   powerpc)
      linux_arch=powerpc
      xenomai_arch=powerpc
      ;;
   bfin|bfinnommu|blackfin)
      linux_arch=blackfin
      xenomai_arch=blackfin
      ;;
   nios2)
      linux_arch=nios2
      xenomai_arch=nios2
      ;;
   arm)
      linux_arch=arm
      xenomai_arch=arm
      ;;
   sh|sh4)
      linux_arch=sh
      xenomai_arch=sh
      ;;
   *)
      echo "$me: unsupported architecture: $linux_arch" >&2
      linux_arch=
      usedefault=
      ;;
   esac

echo "linux_arch = $linux_arch"
echo "xenomai_arch = $xenomai_arch"
echo "x86_arch_bits = $x86_arch_bits"
