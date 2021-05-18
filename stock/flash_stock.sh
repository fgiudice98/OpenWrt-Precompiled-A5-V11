#!/bin/sh

MEM_SIZE=$(cat /proc/meminfo |grep MemTotal|awk '{print $2}')
[ $MEM_SIZE != "28616" ] && echo "Error: Unexpected RAM size on this device, exiting.." && exit 1
echo -n "Step-1: Overwriting u-boot......:"
mtd_write write ./bootloader.bin  Bootloader 1>/dev/null 2>/dev/null
echo  "Success"
echo -n "Step-2: Overwriting Kernel......:"
mtd_write write ./kernel.bin Kernel 1>/dev/null 1>/dev/null 2>/dev/null
echo  "Success"
sync
echo "Step-3: Please reboot device....:"

