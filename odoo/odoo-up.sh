#!/usr/bin/env bash

scp docker-compose.yml root@114.116.28.26:/root
ssh root@114.116.28.26

docker-compose -f docker-compose.yml up
docker-compose -f docker-compose.yml down

docker-compose -f docker-compose.yml stop
docker-compose -f docker-compose.yml start

http://114.116.28.26:8069
