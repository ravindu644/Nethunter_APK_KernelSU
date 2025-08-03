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
    
    KERNEL_PATH="$TMPDIR/kernel/$PRODUCT_NAME"
    
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
    
    ui_print "Flashing: boot.img"
    dd if="$KERNEL_PATH/boot.img" of="/dev/block/by-name/boot"
    
    ui_print "Flashing: dtb.img"
    dd if="$KERNEL_PATH/dtb.img" of="/dev/block/by-name/dtb"
    
    rm -rf "$KERNEL_PATH"
    rm -rf "$TMPDIR/kernel"
    
    ui_print "Success !"
    
    return 0
}
