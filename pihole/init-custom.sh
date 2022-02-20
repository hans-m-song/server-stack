#!/bin/bash

set -e
set -o pipefail

for alias in ${ALIASES}; do
    grep -q ${alias} /etc/pihole/custom.list || echo "${HOST_IP} ${alias}.${HOST_NAME}" >>/etc/pihole/custom.list
done
