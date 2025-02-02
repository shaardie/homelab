#!/bin/bash

set -eux

while true; do
  if iptables -t nat -L | grep -q "^Chain ts-postrouting"; then
    break
  fi
  sleep 0.5
done

while true; do
  if ip addr show dev tailscale0 >/dev/null; then
    break
  fi
  sleep 0.5
done

iptables -t nat -A ts-postrouting -o tailscale0 -m mark --mark 0x40000/0xff0000 -j MASQUERADE
