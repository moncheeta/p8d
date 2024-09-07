#!/usr/bin/env bash

docker-compose up --build -d web
echo "Built"
echo "Waiting for changes..."

trap "docker compose down web; exit" INT

inotifywait -m -r -e modify ./web --exclude "\.git" |
while read -r directory events filename; do
  docker compose up --build -d web
  echo "Rebuilt"
done
