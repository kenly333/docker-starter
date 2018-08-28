#!/usr/bin/env bash

# ecs 114.116.28.26

scp docker-compose-volume.yml root@114.116.28.26:/root
ssh root@114.116.28.26

docker-compose -f docker-compose-volume.yml up
docker-compose -f docker-compose-volume.yml down

docker-compose -f docker-compose-volume.yml stop
docker-compose -f docker-compose-volume.yml start

http://114.116.28.26:8069
