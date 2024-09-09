FROM ghcr.io/getzola/zola:v0.19.1 AS builder

COPY ./web/ /src/
WORKDIR /src/

RUN ["zola", "build"]

FROM caddy:latest

COPY ./caddy /etc/caddy/Caddyfile
COPY --from=builder /src/public/ /web/

EXPOSE 80 443
