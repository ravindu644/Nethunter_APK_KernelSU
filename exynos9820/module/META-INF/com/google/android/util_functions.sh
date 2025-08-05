#!/system/bin/sh

TMPDIR=/dev/tmp

export SUPPORTED_PRODUCTS="beyond0 beyond1 beyond1 beyondx"
export ANDROID_VERSION=$(getprop ro.build.version.release)
export PRODUCT_NAME=$(getprop ro.product.device)
export KERNEL_VERSION=$(uname -r)
export KERNEL_PATH="$TMPDIR/kernel/$PRODUCT_NAME"
export BOOT_BACKUP_DIR="/sdcard/BootBackup"

check_product() {
  hw=$(getprop ro.hardware)
  kernel=$(uname -r)

  ui_print "Verifying device..."
  ui_print " "

  # Check hardware first
  case "$hw" in
    exynos9820) ;;
    *)
      ui_print "Unsupported device: $hw"
      ui_print "This module is only for exynos9820 devices."
      abort
      ;;
  esac

  # Check if kernel string contains nh/nethunter
  ui_print "Detected Kernel version: $kernel"
  echo "$kernel" | grep -iqE "4.14.113"
  if [ $? -ne 0 ]; then
    ui_print "Unsupported Kernel version: $kernel"
    ui_print "This module requires a 4.14.113-xxxxx kernel."    
    abort "Please install the stock boot.img or a stable 4.14.113 kernel for your device and re-flash this module."
  fi
  ui_print " "
  ui_print "Device & Kernel check passed."
  ui_print " "
}

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

prepare_nethunter_kernel(){ 

  ui_print "Checking prebuilt kernel..."
  unzip -o "$ZIPFILE" 'kernel' -d $TMPDIR >&2

  if install_kernel; then
      KERNEL_FLASH_SUCCESS="1"
  else
      abort "No Nethunter kernel found for device $PRODUCT_NAME, aborting..."
  fi  
    
}

warning(){
    ui_print "******************************************"
    ui_print "*        WARNING WARNING WARNING         *"
    ui_print "*    Please save /sdcard/BootBackup      *"
    ui_print "*         before rebooting!              *"
    ui_print "*     If the device fails to boot,       *"
    ui_print "*        restore the backup.             *"
    ui_print "*   Flash thoese images using the TWRP   *"
    ui_print "*           or ODIN mode                 *"
    ui_print "******************************************"
    ui_print " "
}

install_files(){

  ui_print "Installing files..."

  unzip -o "$ZIPFILE" 'system/*' -d $MODPATH >&2


}

install_app(){

  ui_print "Uninstalling original Nethunter app..."
  pm uninstall com.offsec.nethunter &>/dev/null || true

  ui_print "Installing the new Nethunter app..."

  unzip -o "$ZIPFILE" 'data/*' -d $TMPDIR >&2
  pm install -r $TMPDIR/data/NetHunter_exynos9820_signed.apk &>/dev/null || abort "Failed to install the Nethunter app...!"

  ui_print "Granting required permissions..."

  for x in ACCESS_BACKGROUND_LOCATION \
          ACCESS_COARSE_LOCATION \
          ACCESS_FINE_LOCATION \
          READ_EXTERNAL_STORAGE \
          WRITE_EXTERNAL_STORAGE \
          WRITE_SECURE_SETTINGS; do
    pm grant -g com.offsec.nethunter android.permission.$x 2>/dev/null && \
      ui_print "** $x success" || ui_print "** ! $x failed"
  done

}

boot_scripts(){

  ui_print "Copying boot scripts..."

  (unzip -o "$ZIPFILE" 'post-fs-data.sh' -d $MODPATH >&2
  unzip -o "$ZIPFILE" 'service.sh' -d $MODPATH >&2) || abort "Failed to copy boot scripts..."

}

cleanup_nh(){

rm -rf /data/system/package_cache/*

ui_print " "

}

success_nh(){

  ui_print " "
  ui_print "Nethunter Kernel with full USB Arsenal support for exynos9820 devices is installed successfully!"
  ui_print " "    
  ui_print "Please reboot your device to apply changes."
  ui_print " "  

}
