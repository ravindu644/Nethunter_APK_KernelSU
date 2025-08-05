# source our functions
unzip -o "$ZIPFILE" 'META-INF/*' -d $TMPDIR >&2 && source $TMPDIR/META-INF/com/google/android/util_functions.sh

SKIPMOUNT=false

# Set to true if you need to load system.prop
PROPFILE=false

# Set to true if you need post-fs-data script
POSTFSDATA=true

# Set to true if you need late_start service script
LATESTARTSERVICE=true

ui_print " "
ui_print " "
ui_print "*************************************"
ui_print "-  Nethunter Kernel for exynos9820  -"
ui_print "           by ravindu644            "
ui_print "*************************************"
ui_print " "

check_product

on_install() {

  prepare_nethunter_kernel

  install_files

  install_app

  boot_scripts

  cleanup_nh

}

set_permissions() {
  set_perm_recursive $MODPATH 0 0 0755 0644

  # Set correct SELinux contexts and permissions for specific files
  set_perm $MODPATH/system/bin/busybox_nh 0 2000 0755 u:object_r:system_file:s0
  set_perm_recursive $MODPATH/system/vendor/firmware 0 2000 0755 0644 u:object_r:vendor_fw_file:s0

  ui_print " "  

  if [ "$KERNEL_FLASH_SUCCESS" = "1" ]; then
      warning
  fi

  success_nh

}
