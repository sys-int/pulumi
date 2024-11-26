#!/bin/bash
set -e

mkdir -p /dev/net && \
mknod /dev/net/tun c 10 200 && \
chmod 600 /dev/net/tun

exec "$@"