SKIPMOUNT=false

# Set to true if you need to load system.prop
PROPFILE=false

# Set to true if you need post-fs-data script
POSTFSDATA=false

# Set to true if you need late_start service script
LATESTARTSERVICE=false

REPLACE_EXAMPLE="
/system/app/Youtube
/system/priv-app/SystemUI
/system/priv-app/Settings
/system/framework
"

print_modname() {
  ui_print " "
  ui_print " "
  ui_print "********************************"
  ui_print "-  USB Arsenal for exynos9820  -"
  ui_print "        by ravindu644           "
  ui_print "********************************"
  ui_print " "

}

on_install() {
  ui_print "Copying files..."

  unzip -o "$ZIPFILE" 'system/*' -d $MODPATH >&2

  ui_print "Uninstalling original Nethunter app..."
  pm uninstall com.offsec.nethunter &>/dev/null || true

  ui_print "Installing the new Nethunter app..."

  unzip -o "$ZIPFILE" 'data/*' -d $TMPDIR >&2
  pm install -r $TMPDIR/data/NetHunter_exynos9820_signed.apk &>/dev/null || true

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


  rm -rf /data/system/package_cache/*
  ui_print " "
  ui_print "Done !"
}

# Only some special files require specific permissions
# This function will be called after on_install is done
# The default permissions should be good enough for most cases

set_permissions() {
  # The following is the default rule, DO NOT remove
  set_perm_recursive $MODPATH 0 0 0755 0644

  # Here are some examples:
  # set_perm_recursive  $MODPATH/system/lib       0     0       0755      0644
  # set_perm  $MODPATH/system/bin/app_process32   0     2000    0755      u:object_r:zygote_exec:s0
  # set_perm  $MODPATH/system/bin/dex2oat         0     2000    0755      u:object_r:dex2oat_exec:s0
  # set_perm  $MODPATH/system/lib/libart.so       0     0       0644
}

# You can add more functions to assist your custom script code
