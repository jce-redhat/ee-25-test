#!/bin/bash

# clean up artifacts
echo "Removing build context and image artifacts"
rm -rf ./context
podman image rm localhost/ee-25-test:$(date +%Y%m%d)
buildah rm --all
podman image prune -f

# build EE image
echo "Building execution environment"
ansible-builder build \
    --build-arg ANSIBLE_GALAXY_SERVER_CERTIFIED_TOKEN \
    --build-arg ANSIBLE_GALAXY_SERVER_VALIDATED_TOKEN \
    -v 3 \
    -t localhost/ee-25-test:$(date +%Y%m%d) | tee ansible-builder.log
