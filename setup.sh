#!/bin/sh

# packages
apt update -y && apt upgrade -y

# ssl
apt install -y certbot
certbot certonly --standalone -d prime8.dev,mail.prime8.dev --email moncheeta@prime8.dev --agree-tos --force-renewal

