#!/usr/bin/env bash

# ecs 139.159.161.176

# install git and clone devstack repo
yum install git
git clone https://github.com/edx/devstack.git

# overlay2 is tested and supported
docker info | grep -i 'storage driver'

# Install the requirements inside of a Python virtualenv.
make requirements

# pull the latest images
make pull

# customize the local repositories
make dev.clone
make dev.status

# Validate the devstack configuration
make validate

# Stop all services
make stop

# Remove all service containers and networks
make down

# Provision dev environment with all services stopped
make dev.provision

# start all of the devstack containers
make dev.up

# To see logs from containers
make logs

# To view the logs of a specific service container
make ecommerce-logs

# Remove all devstack-related containers, networks, and volumes
make destroy

# For information on all the available make commands, you can run:
make help
