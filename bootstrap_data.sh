#!/bin/sh

set -e

if [ ! -z ${DEBUG} ]; then
    set -x
fi

ETCDCTL_API=3 etcdctl                                               \
    --cert /var/lib/rancher/k3s/server/tls/etcd/server-client.crt   \
    --key /var/lib/rancher/k3s/server/tls/etcd/server-client.key    \
    --endpoints https://127.0.0.1:2379                              \
    --cacert /var/lib/rancher/k3s/server/tls/etcd/server-ca.crt get \
    --prefix /                                                      \
    --keys-only | grep "bootstrap/"

exit 0
