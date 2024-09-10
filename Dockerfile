FROM ghcr.io/getzola/zola:v0.19.2 AS web
COPY ./web/ /src/
WORKDIR /src/
RUN ["zola", "build"]

FROM caddy:builder AS caddy
RUN xcaddy build \
    --with github.com/caddyserver/cache-handler

FROM caddy:latest
COPY --from=caddy /usr/bin/caddy /usr/bin/caddy
COPY ./caddy /etc/caddy/Caddyfile
COPY --from=web /src/public/ /web/
EXPOSE 80 443
