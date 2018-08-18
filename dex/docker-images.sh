#!/usr/bin/env bash

OPENEDX_RELEASE=devstack

docker pull edxops/chrome:${OPENEDX_RELEASE:-latest}
docker pull edxops/firefox:${OPENEDX_RELEASE:-latest}
docker pull edxops/credentials:${OPENEDX_RELEASE:-latest}
docker pull edxops/discovery:${OPENEDX_RELEASE:-latest}
docker pull edxops/ecommerce:${OPENEDX_RELEASE:-latest}
docker pull edxops/notes:${OPENEDX_RELEASE:-latest}
docker pull edxops/edxapp:${OPENEDX_RELEASE:-latest}
docker pull edxops/forum:${OPENEDX_RELEASE:-latest}
docker pull edxops/devpi:${OPENEDX_RELEASE:-latest}

docker pull edxops/elasticsearch:devstack

docker pull memcached:1.4.24
docker pull mongo:3.2.16
docker pull mysql:5.6
