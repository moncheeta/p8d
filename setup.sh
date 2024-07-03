#!/bin/sh

# packages
apt update -y && apt upgrade -y

# ssl
apt install -y certbot
./ssl.sh

# docker
docker compose build

# apply all updates
reboot
