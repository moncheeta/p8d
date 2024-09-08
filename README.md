# p8d

This is my website located at prime8.dev

## download

Run `sh <(curl -s https://raw.githubusercontent.com/moncheeta/p8d/master/download.sh)` to download the necessary files.

## setup

First of all, make sure you copied your ssh public key on the server. If not, you can use the `ssh-copy-id` command. Next, run `setup.sh` to properly setup all the services. Afterwards, it's recommended to restart the server.

## run

Run `docker compose up -d` to start up all the services in the background. You can stop them by running `docker compose down`.
