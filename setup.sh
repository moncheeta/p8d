#!/bin/sh

# packages
apt update -y && apt upgrade -y

# ssl
apt install -y certbot
./ssl.sh

# apply all updates
reboot
