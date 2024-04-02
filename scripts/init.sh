#! /bin/sh
curl -sfL https://get.k3s.io | sh -

./scripts/full_setup_cluster.sh
