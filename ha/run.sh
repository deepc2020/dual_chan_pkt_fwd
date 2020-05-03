#!/usr/bin/with-contenv bashio

mac=$( ifconfig | grep -o -E '([[:xdigit:]]{1,2}:){5}[[:xdigit:]]{1,2}')
echo Gateway ID: ${mac:0:8}:ff:ff:${mac:9:12}

cd /home/pi/dual_chan_pkt_fwd/
./dual_chan_pkt_fwd
