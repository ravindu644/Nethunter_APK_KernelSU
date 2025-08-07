#!/bin/bash
APIFACE=wlan1
NETIFACE=wlan0
SSID="Free Wifi"
BSSID=00:11:22:33:44:55
CHANNEL=1
TEMPLATE=""
WLAN0TO1=1
command -v wifipumpkin3 >/dev/null 2>&1 || { echo 'wifipumpkin3 is missing, installing..'; apt update && apt install wifipumpkin3 -y; }
command -v dnschef >/dev/null 2>&1 || { echo 'dnschef is missing, installing..'; apt update && apt install dnschef -y; }
echo "Checking if config folder exists.."
if [[ ! -d /root/.config/wifipumpkin3 ]]; then
  wifipumpkin3 -xpulp 'exit'
fi
#echo "Checking if templates are linked to nh_files.."
#if [[ ! -L /root/.config/wifipumpkin3/config/templates ]]; then
#  echo "Linking templates to /sdcard/nh_files.."
#  mv /root/.config/wifipumpkin3/config/templates /root/.config/wifipumpkin3/config/templates_orig
#  ln -s /sdcard/nh_files/templates /root/.config/wifipumpkin3/config/templates
#fi

echo "Checking default rule number.."
for table in $(ip rule list | awk -F"lookup" '{print $2}'); do
DEF=$(ip route show table $table|grep default|grep $NETIFACE)
  if ! [ -z "$DEF" ]; then
     break
  fi
done
echo "Default rule number is $table"


echo "Checking for existing $APIFACE interface.."
if ip link show $APIFACE; then
  echo "$APIFACE exists, continuing.."

  set -x

  echo "Spoofing MAC address for $APIFACE..."
  ip link set dev $APIFACE address $BSSID

  ip link set up dev $APIFACE

  ip link show $APIFACE

  set +x
else
  if [[ $WLAN0TO1 == 1 ]]; then
    if [[ $(iw list | grep '* AP') == *"* AP"* ]]; then
      echo "wlan0 supports AP mode, creating AP interface.."
      iw dev wlan0 interface add $APIFACE type __ap
      ip addr flush $APIFACE
      ip link set $APIFACE down
    else
      echo "wlan0 doesn't support AP mode, exiting.."
      exit 0
    fi
  fi
fi

echo "Adding iptables rules for internet sharing.."
ip rule add from all lookup main pref 1 2> /dev/null
ip rule add from all iif lo oif $APIFACE uidrange 0-0 lookup 97 pref 11000 2> /dev/null
ip rule add from all iif lo oif $NETIFACE lookup $table pref 17000 2> /dev/null
ip rule add from all iif lo oif $APIFACE lookup 97 pref 17000 2> /dev/null
ip rule add from all iif $APIFACE lookup $table pref 21000 2> /dev/null
echo "Starting wifipumpkin3 and dnschef.."
if [[ ! $TEMPLATE == "" ]]; then
  TemplateCMD=" set captiveflask.$TEMPLATE true;"
  CaptiveCMD=" set proxy captiveflask true;"
  else CaptiveCMD=" set proxy noproxy;"
fi
#echo $SSID
#echo $CaptiveCMD
#echo $TemplateCMD
sleep 20 && dnschef --interface 10.0.0.1 &

# ------------------- FIXED COMMAND BELOW -------------------
wifipumpkin3 --xpulp "set interface $APIFACE; set interface_net $NETIFACE; set ssid '$SSID'; set bssid $BSSID; set channel $CHANNEL;${CaptiveCMD}${TemplateCMD} start; ap"
# -----------------------------------------------------------

pkill python3
echo "Restoring iptables rules.."
ip rule del from all lookup main pref 1 2> /dev/null
ip rule del from all iif lo oif $APIFACE uidrange 0-0 lookup 97 pref 11000 2> /dev/null
ip rule del from all iif lo oif $NETIFACE lookup $table pref 17000 2> /dev/null
ip rule del from all iif lo oif $APIFACE lookup 97 pref 17000 2> /dev/null
ip rule del from all iif $APIFACE lookup $table pref 21000 2> /dev/null
