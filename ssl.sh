#!/bin/sh

certbot certonly --standalone -d "prime8.dev,*.prime8.dev" --agree-tos --force-renewal
