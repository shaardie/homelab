FROM caddy:builder AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/rfc2136

FROM caddy:latest
COPY --from=builder /usr/bin/caddy /usr/bin/caddy
COPY Caddyfile /etc/caddy/Caddyfile
COPY nsupdate.caddy /etc/caddy/nsupdate.caddy
