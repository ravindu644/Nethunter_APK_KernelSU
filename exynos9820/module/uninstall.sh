# for some odd reason, why this doesn't work?

if [  -f /sdcard/BootBackup/boot.img ]; then
    dd if=/sdcard/BootBackup/boot.img of=/dev/block/by-name/boot
fi

if [  -f /sdcard/BootBackup/dtb.img ]; then
    dd if=/sdcard/BootBackup/dtb.img of=/dev/block/by-name/dtb
fi
