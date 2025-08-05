#!/system/bin/sh

TMPDIR=/dev/tmp

export SUPPORTED_PRODUCTS="beyond0 beyond1 beyond1 beyondx"
export ANDROID_VERSION=$(getprop ro.build.version.release)
export PRODUCT_NAME=$(getprop ro.product.bootimage.device)
export KERNEL_VERSION=$(uname -r)
export KERNEL_PATH="$TMPDIR/kernel/$PRODUCT_NAME"
export BOOT_BACKUP_DIR="/sdcard/BootBackup"

check_device() {
    
    if [ "$ANDROID_VERSION" != "12" ]; then
        ui_print "Android version mismatch, skipping..."
        return 1
    fi
    
    if ! echo "$SUPPORTED_PRODUCTS" | grep -q "$PRODUCT_NAME"; then
        ui_print "Device $PRODUCT_NAME not supported, skipping..."
        return 1
    fi
    
    if ! echo "$KERNEL_VERSION" | grep -q "4.14.113"; then
        ui_print "Kernel version must 4.14.113, skipping..."
        return 1
    fi

}

backup_images(){
    ui_print "Backing up original boot and dtb images..."
    mkdir -p "$BOOT_BACKUP_DIR"

    dd if=/dev/block/by-name/boot of=$BOOT_BACKUP_DIR/boot.img
    dd if=/dev/block/by-name/dtb of=$BOOT_BACKUP_DIR/dtb.img

    ui_print "Backup completed, and saved to $BOOT_BACKUP_DIR..."
}

install_kernel(){

    check_device || return 1

    if [ ! -d "$KERNEL_PATH" ]; then
        ui_print "Kernel directory not found, skipping..."
        return 1
    fi
    
    ui_print "Found Kernel for device: $PRODUCT_NAME"
    
    if [ ! -f "$KERNEL_PATH/boot.img" ] || [ ! -f "$KERNEL_PATH/dtb.img" ]; then
        ui_print "Required kernel images missing, skipping..."
        rm -rf "$KERNEL_PATH"
        return 1
    fi

    backup_images
    
    ui_print "Flashing: boot.img"
    dd if="$KERNEL_PATH/boot.img" of="/dev/block/by-name/boot"
    
    ui_print "Flashing: dtb.img"
    dd if="$KERNEL_PATH/dtb.img" of="/dev/block/by-name/dtb"
    
    rm -rf "$KERNEL_PATH"
    rm -rf "$TMPDIR/kernel"
    
    ui_print "Success !"
    
    return 0
}

warning(){
    ui_print "**************************************************"
    ui_print "*         WARNING WARNING WARNING                *"
    ui_print "  Please save $BOOT_BACKUP_DIR before rebooting! *"
    ui_print " If the device fails to boot, restore the backup *"
    ui_print " Flash thoese images using the TWRP or ODIN mode *"
    ui_print "**************************************************"
    ui_print " "
}
