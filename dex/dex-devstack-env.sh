#!/usr/bin/env bash

# Install the requirements inside of a Python virtualenv.
make requirements

# pull the latest images
make down
make pull

# customize the local repositories
make dev.clone

# Provision
make dev.provision

# Provision using docker-sync:
make dev.sync.provision

# start all of the devstack containers
make dev.up

# Start using docker-sync:
make dev.sync.up

# To see logs from containers
make logs

# To view the logs of a specific service container
make ecommerce-logs

# to reset your environment and start provisioning from scratch, you can run:
make destroy

# For information on all the available make commands, you can run:
make help
