#!/vendor/bin/sh
#
# A simple script that checks if the anx directories are present

ANX_DIR="/sdcard/.ANXCamera/"
DEVICE=$(getprop ro.product.device)
if [ -d $ANX_DIR ]; then
        file1=$(find /system/etc/ANXCamera/cheatcodes/ -name "*${DEVICE}*" -exec sha1sum {} \; | cut -d " " -f1 )
        file2=$(find /sdcard/.ANXCamera/cheatcodes_reference/ -name "*${DEVICE}*" -exec sha1sum {} \; | cut -d " " -f1 )
        if [ "$file1" = "$file2" ]; then
                echo "You are using the latest files already"
                exit 0
        else
                mkdir -p /sdcard/.ANXCamera/cheatcodes/
                cp -R /system/etc/ANXCamera/cheatcodes/*${DEVICE}* /sdcard/.ANXCamera/cheatcodes/
                mkdir -p /sdcard/.ANXCamera/cheatcodes_reference/
                cp -R /system/etc/ANXCamera/cheatcodes/*${DEVICE}* /sdcard/.ANXCamera/cheatcodes_reference/
                mkdir -p /sdcard/.ANXCamera/features/
                cp -R /system/etc/device_features/*${DEVICE}* /sdcard/.ANXCamera/features/
                mkdir -p /sdcard/.ANXCamera/features_reference/
                cp -R /system/etc/device_features/*${DEVICE}* /sdcard/.ANXCamera/features_reference/
                exit 0
        fi

else
                mkdir -p /sdcard/.ANXCamera/cheatcodes/
                cp -R /system/etc/ANXCamera/cheatcodes/*${DEVICE}* /sdcard/.ANXCamera/cheatcodes/
                mkdir -p /sdcard/.ANXCamera/cheatcodes_reference/
                cp -R /system/etc/ANXCamera/cheatcodes/*${DEVICE}* /sdcard/.ANXCamera/cheatcodes_reference/
                mkdir -p /sdcard/.ANXCamera/features/
                cp -R /system/etc/device_features/*${DEVICE}* /sdcard/.ANXCamera/features/
                mkdir -p /sdcard/.ANXCamera/features_reference/
                cp -R /system/etc/device_features/*${DEVICE}* /sdcard/.ANXCamera/features_reference/
                exit 0

fi

