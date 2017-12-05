#!/bin/sh
set -e

export PATH=/usr/local/bin/google-cloud-sdk/bin:$PATH

exec "$@"
