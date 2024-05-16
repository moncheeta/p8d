#!/bin/sh

certbot certonly --standalone -d prime8.dev,mail.prime8.dev --agree-tos --force-renewal
