#!/usr/bin/env bash

scp docker-compose.yml root@114.116.28.26:/root
ssh root@114.116.28.26

docker-compose up
docker-compose down

docker-compose stop
docker-compose start

# elasticsearch
curl http://114.116.28.26:9200/_cat/health

# kibana
http://114.116.28.26:5601
