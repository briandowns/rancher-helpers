#!/bin/sh

set -e

if [ ! -z ${DEBUG} ]; then
    set -x
fi

if [ -z $1 ]; then
    echo "error: first argument should be either k3s or rke2"
fi
BINARY=$1

"${BINARY}" etcd-snapshot      \
    --s3                       \
    --s3-bucket=<bucket-name>  \
    --s3-access-key=<REDACTED> \
    --s3-secret-key=<REDACTED>

exit 0
