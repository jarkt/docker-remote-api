#!/usr/bin/env sh

if [ -z "$1" ]; then
    echo "First parameter must be the allowed IP"
    exit 1
fi

set -eu
ALLOWED_IP=$1

echo "Starting Docker Remote API for IP $ALLOWED_IP"
socat TCP-LISTEN:2375,reuseaddr,fork,range=${ALLOWED_IP}/32 UNIX-CLIENT:/var/run/docker.sock
