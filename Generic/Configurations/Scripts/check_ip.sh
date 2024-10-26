#!/bin/bash
# Checks IP from DDNS hostname and updates UFW firewall rules - useful for people without static IP address.
# Needs to run as root, preferably as a cronjob. Put your DDNS hostname in HOSTNAME= part and see the magic.
# Some parts of it I've found on stackoverflow, can't pin-point where exactly as it's been two(+1 from now on) months ago.
HOSTNAME=

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root"
   exit 1
fi

new_ip=$(host $HOSTNAME | head -n1 | cut -f4 -d ' ')
old_ip=$(/usr/sbin/ufw status | grep $HOSTNAME | head -n1 | tr -s ' ' | cut -f3 -d ' ')

if [ "$new_ip" = "$old_ip" ] ; then
    echo IP address has not changed
else
    if [ -n "$old_ip" ] ; then
        /usr/sbin/ufw delete allow from "$old_ip" to any port 22 proto tcp
        /usr/sbin/ufw delete allow from "$old_ip" to any port 51820 proto udp
    fi
    /usr/sbin/ufw insert 1 allow from "$new_ip" to any port 22 proto tcp
    /usr/sbin/ufw insert 2 allow from "$new_ip" to any port 51820 proto udp
    /usr/sbin/ufw reload
    echo iptables have been updated
fi
