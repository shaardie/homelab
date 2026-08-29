FROM caddy:2.11.4-builder AS builder

RUN xcaddy build \
  --with github.com/caddy-dns/rfc2136

FROM caddy:2.11.4
COPY --from=builder /usr/bin/caddy /usr/bin/caddy
COPY ./conf/* /etc/caddy/
