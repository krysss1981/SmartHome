#!/bin/sh

chown root:root /etc/bind/rndc.key
chmod 755 /etc/bind/rndc.key

echo "Starting Syslog Server"
/etc/init.d/rsyslog restart

echo "Starting DNS Server"
/usr/sbin/named -c /etc/bind/named.conf -f