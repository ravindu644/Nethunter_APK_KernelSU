#!/system/bin/sh

TMPDIR=/dev/tmp

ui_print ""

ui_print "[DEBUG] FUNCTIONS ARE FUNCTIONAL !"

ui_print ""

SUPPORTED_PRODUCTS="beyondxks"

install_kernel() {
    ANDROID_VERSION=$(getprop ro.build.version.release)
    PRODUCT_NAME=$(getprop ro.product.name)
    KERNEL_VERSION=$(uname -r)
    
    [ "$ANDROID_VERSION" != "12" ] && return 1
    
    echo "$SUPPORTED_PRODUCTS" | grep -q "$PRODUCT_NAME" || return 1
    
    echo "$KERNEL_VERSION" | grep -q "4.14.113" || return 1
    
    KERNEL_PATH="$TMPDIR/kernel/$PRODUCT_NAME"
    
    [ ! -d "$KERNEL_PATH" ] && return 1
    
    ui_print "Found Kernel for device: $PRODUCT_NAME"
    
    [ ! -f "$KERNEL_PATH/boot.img" ] || [ ! -f "$KERNEL_PATH/dtb.img" ] && {
        rm -rf "$KERNEL_PATH"
        return 1
    }
    
    ui_print "Flashing: boot.img"
    dd if="$KERNEL_PATH/boot.img" of="/dev/block/by-name/boot"
    
    ui_print "Flashing: dtb.img"
    dd if="$KERNEL_PATH/dtb.img" of="/dev/block/by-name/dtb"
    
    rm -rf "$KERNEL_PATH"
    rm -rf "$TMPDIR/kernel"
    
    ui_print "Success !"
    
    return 0
}
