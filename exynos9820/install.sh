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
      ui_print "This module is only for Exynos9820 devices."
      abort
      ;;
  esac

  # Check if kernel string contains nh/nethunter
  ui_print "Detected Kernel version: $kernel"
  echo "$kernel" | grep -iqE "nh|nethunter|ravindu644"
  if [ $? -ne 0 ]; then
    ui_print "Unsupported Kernel: $kernel"
    ui_print "Please install a compatible NetHunter kernel before using this module."
    abort
  fi

USB_RC="/vendor/etc/init/init.$(getprop ro.hardware).usb.rc"

if grep -q "nethunter" "$USB_RC"; then
    ui_print "[i] Custom init.$(getprop ro.hardware).usb.rc file found. Proceeding with installation..."
else
    ui_print "[-] This specific script will only work with ravindu644's custom init.$(getprop ro.hardware).usb.rc file."
    sleep 1
    ui_print "Opening browser to download the required file..."
    sleep 1
    ui_print "Download it and place it in /vendor/etc/init/ directory."
    sleep 1
    nohup am start -a android.intent.action.VIEW -d https://raw.githubusercontent.com/ravindu644/Nethunter_APK_KernelSU/exynos9820-nethunter/exynos9820/vendor/etc/init/init.exynos9820.usb.rc >/dev/null 2>&1 &
    abort
fi

  ui_print "Device & Kernel check passed."
  ui_print " "
}

check_device


on_install() {
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
  set_perm $MODPATH/system/vendor/etc/init/init.exynos9820.usb.rc 0 0 0644 u:object_r:vendor_configs_file:s0
  set_perm $MODPATH/system/bin/busybox_nh 0 2000 0755 u:object_r:system_file:s0
  set_perm_recursive $MODPATH/system/vendor/firmware 0 2000 0755 0644 u:object_r:vendor_fw_file:s0

  ui_print "Done setting up permissions..."
}
