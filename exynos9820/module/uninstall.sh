if [  -f /sdcard/BootBackup/boot.img ]; then
    ui_print "Backup of the original boot.img found, restoring..."
    dd if=/sdcard/BootBackup/boot.img of=/dev/block/by-name/boot
fi

if [  -f /sdcard/BootBackup/dtb.img ]; then
    ui_print "Backup of the original dtb.img found, restoring..."
    dd if=/sdcard/BootBackup/dtb.img of=/dev/block/by-name/dtb
fi
