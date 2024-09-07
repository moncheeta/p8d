#!/bin/sh

echo "updating system"
apt update -y && apt upgrade -y

echo "adding user p8d"
useradd -m -s /bin/bash -G sudo,docker p8d
passwd p8d

echo "cloning repo"
git clone https://github.com/moncheeta/p8d.git /p8d/
chown -R p8d /p8d/

cd /p8d/
echo "now run the setup.sh script to setup services"
su p8d
