SKIPMOUNT=false

# Set to true if you need to load system.prop
PROPFILE=false

# Set to true if you need post-fs-data script
POSTFSDATA=true

# Set to true if you need late_start service script
LATESTARTSERVICE=true

ui_print " "
ui_print " "
ui_print "********************************"
ui_print "-  USB Arsenal for exynos9820  -"
ui_print "        by ravindu644           "
ui_print "********************************"
ui_print " "


check_device() {
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

check_device


on_install() {

  ui_print "Checking prebuilt kernel..."
  unzip -o "$ZIPFILE" 'kernel' -d $TMPDIR >&2

  # source our functions
  unzip -o "$ZIPFILE" 'META-INF/*' -d $TMPDIR >&2 && source $TMPDIR/META-INF/com/google/android/util_functions.sh
  install_kernel || ui_print "No Nethunter kernel found for device $PRODUCT_NAME, skipping..."

  ui_print "Installing files..."

  unzip -o "$ZIPFILE" 'system/*' -d $MODPATH >&2

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

  ui_print "Copying boot scripts..."

  (unzip -o "$ZIPFILE" 'post-fs-data.sh' -d $MODPATH >&2
  unzip -o "$ZIPFILE" 'service.sh' -d $MODPATH >&2) || abort "Failed to copy boot scripts..."

  rm -rf /data/system/package_cache/*
  ui_print " "

}

set_permissions() {
  set_perm_recursive $MODPATH 0 0 0755 0644

  # Set correct SELinux contexts and permissions for specific files
  set_perm $MODPATH/system/bin/busybox_nh 0 2000 0755 u:object_r:system_file:s0
  set_perm_recursive $MODPATH/system/vendor/firmware 0 2000 0755 0644 u:object_r:vendor_fw_file:s0

  ui_print " "  

  warning

  ui_print " "
  ui_print "Nethunter Kernel with full USB Arsenal support for exynos9820 devices is installed successfully!"
  ui_print " "    
  ui_print "Please reboot your device to apply changes."
  ui_print " "  
}
