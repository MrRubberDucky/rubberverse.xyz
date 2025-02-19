#!/bin/bash
# Cronjob this to automatically check for dynamic IP changes based on DDNS hostname.
HOSTNAME=<HOSTNAME>

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
        /usr/sbin/ufw delete allow from $old_ip to any port 22 proto tcp
        /usr/sbin/ufw delete allow from $old_ip to any port 51820 proto udp
    fi
    /usr/sbin/ufw insert 1 allow from $new_ip to any port 22 proto tcp
    /usr/sbin/ufw insert 2 allow from $new_ip to any port 51820 proto udp
    /usr/sbin/ufw reload
    echo iptables have been updated
fi
