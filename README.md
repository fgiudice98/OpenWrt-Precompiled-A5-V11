# OpenWrt-Precompiled-A5-V11
A5-V11 precompiled OpenWrt firmware
Without ppp and luci packages but ready for extroot with ext formatted usb storage

## First installation
1. Copy flash.sh, uboot.bin and a firmware.bin (from the version folders) in a fat32 usb storage
1. Connect the usb storage to the A5-V11
1. Enter the telnet shell and navigate to the usb storage
1. Run flash.sh
1. Reboot

## Update
* Flash sysupgrade.bin like a normal OpenWrt update

#### Disclaimer
I am not responsible of any damage or broken hw  
This was tested in a 4/32 A5-V11 with stock Qualcomm firmware

#### Credits
Bootloader and base script are from [this blog post](http://albert-david.blogspot.com/2019/08/a5-v11-overwrite-oemqualcomm-firmware.html)
