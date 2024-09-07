#!/bin/sh

echo "setting up services"
docker compose up -d
docker compose exec -it mail setup email add damian@prime8.dev
docker compose restart mail
docker compose exec -it mail setup alias add postmaster@prime8.dev damian@prime8.dev
docker compose exec -it mail setup config dkim
docker exec -it mail cat /tmp/docker-mailserver/opendkim/keys/prime8.dev/mail.txt
docker compose restart mail
echo "services are set up"
