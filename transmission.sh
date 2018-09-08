#!/bin/bash

apt update
apt install -y transmission-daemon transmission-remote-cli wget
service transmission-daemon stop
cp settings.json /var/lib/transmission-daemon/info/settings.json
service transmission-daemon start
sed '2 i service transmission-daemon start' -i /etc/rc.local
mkdir -p /usr/local/caddy/www/Download
chmod -R 777 /usr/local/caddy/www