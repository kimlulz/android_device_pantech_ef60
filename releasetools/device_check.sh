#!/sbin/sh

if grep -q "IM-A900S" /dev/block/mmcblk0p10 ; then
	mv /system/system/vendor/etc/firmware_ef60s/* /system/system/vendor/firmware/

elif grep -q "IM-A900K" /dev/block/mmcblk0p10 ; then
	mv /system/system/vendor/etc/firmware_ef60k/* /system/system/vendor/firmware/

elif grep -q "IM-A900L" /dev/block/mmcblk0p10 ; then
	mv /system/system/vendor/etc/firmware_ef60l/* /system/system/vendor/firmware/
fi

rm -rf /system/system/vendor/etc/firmware_ef60s
rm -rf /system/system/vendor/etc/firmware_ef60k
rm -rf /system/system/vendor/etc/firmware_ef60l
rm -rf /system/system/bin/device_check.sh
