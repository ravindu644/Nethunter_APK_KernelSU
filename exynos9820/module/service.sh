#!/system/bin/sh
# Call userinit.sh and/or userinit.d/* scripts if present in /data/local

if [ -e /data/local/userinit.sh ]; then
  log -p i -t userinit "Executing /data/local/userinit.sh"
  logwrapper /system/bin/sh /data/local/userinit.sh
  setprop cm.userinit.active 1
else
  setprop cm.userinit.active 0
fi

if [ -d /data/local/userinit.d ]; then
  logwrapper /system/bin/busybox_nh run-parts /data/local/userinit.d
  setprop cm.userinit.active 1
else
  setprop cm.userinit.active 0
fi
