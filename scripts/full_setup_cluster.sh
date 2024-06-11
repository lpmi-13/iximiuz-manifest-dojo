set -x

# Check if the manifests copy target directory exists, and if not, create it
if ! [ -d "./manifests/application" ]; then
  mkdir ./manifests/application
fi

# First, tear down anything currently running
./scripts/tear_down.sh

# Next, we'll build all the images
./scripts/build_containers.sh

# Clear out current application manifests and copy the templates back in
# rm -rf manifests/application/*
# cp manifests/templates/* ./manifests/application

# set up the manifests with one broken configuration
# python3 ./scripts/configure.py

# And now we can deploy those containers as deployments with corresponding services
# alongside the monitoring stack (eg. prometheus/grafana)
# ./scripts/full_deploy.sh
