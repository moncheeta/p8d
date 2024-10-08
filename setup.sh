#!/bin/sh

echo "setting up services"
sudo mkdir -p /var/log/mail/
sudo touch /var/log/mail/mail.log
printf "GROUP_ID=6454678062\nSCHOOLOGY_DOMAIN=schoology.d214.org\nSCHOOLOGY_API_KEY=\nSCHOOLOGY_API_SECRET=\n" > ./csc/env
vim ./csc/env
docker compose up -d
docker compose exec -it mail setup email add damian@prime8.dev
docker compose restart mail
docker compose exec -it mail setup alias add postmaster@prime8.dev damian@prime8.dev
docker compose exec -it mail setup config dkim
docker exec -it mail cat /tmp/docker-mailserver/opendkim/keys/prime8.dev/mail.txt
docker compose down
echo "services are set up"

echo "setting up firewall"
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow 2222,22,80,443,25,143,465,587,993/tcp
sudo ufw enable
echo "firewall set up"

echo "copy your ssh public key to server"
echo "press enter to continue"
read KEY

echo "securing ssh"
PORT=2222
sudo sed -i -e "s/^#\?PasswordAuthentication .*/PasswordAuthentication no/" \
            -e "s/^#\?PermitRootLogin .*/PermitRootLogin no/" \
            -e "s/^#\?UsePAM .*/UsePAM no/" \
            -e "s/^#\?Port .*/Port $PORT/" \
            /etc/ssh/sshd_config
echo "switched port to $PORT"
sudo systemctl restart ssh
