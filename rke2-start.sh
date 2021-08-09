#!/bin/sh

set -ex

/home/bdowns/rke2 server                        \
	--etcd-snapshot-schedule-cron='* */1 * * *' \
	--etcd-snapshot-retention=10                \
	--etcd-s3                                   \
	--etcd-s3-bucket=<bucket-name>              \
	--etcd-s3-access-key=<REDACTED>             \
	--etcd-s3-secret-key=<REDACTED>

exit 0
