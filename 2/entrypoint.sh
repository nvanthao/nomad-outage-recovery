#! /bin/sh

set -e

echo "Starting Consul..."
consul agent -config-file /opt/consul/config.hcl >/var/log/consul.log 2>&1 &

echo "Starting Nomad..."
nomad agent -config /opt/nomad/config.hcl >/var/log/nomad.log 2>&1 &

# goodnight!
sleep infinity
