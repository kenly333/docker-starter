#!/bin/bash

yum install docker

cat <<EOF > /etc/docker/daemon.json
{"registry-mirrors": ["http://9c7eafcc.m.daocloud.io","http://18817714.m.daocloud.io","https://registry.docker-cn.com"]}
EOF

cat /etc/docker/daemon.json

# v1.19.0
# sudo curl -L https://github.com/docker/compose/releases/download/1.19.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
# sudo chmod +x /usr/local/bin/docker-compose

# v1.21.2
sudo curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# v1.22.0
# sudo curl -L https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
# sudo chmod +x /usr/local/bin/docker-compose

docker-compose --version
