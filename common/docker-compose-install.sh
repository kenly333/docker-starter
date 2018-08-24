#!/bin/bash

hostnamectl --static set-hostname  docker-host
cat /etc/hostname

# install docker
yum  -y install docker
docker info | grep -i 'storage driver'

# config docker mirrors
cat <<EOF > /etc/docker/daemon.json
{"registry-mirrors": ["http://9c7eafcc.m.daocloud.io","http://18817714.m.daocloud.io","https://registry.docker-cn.com"]}
EOF

cat /etc/docker/daemon.json

systemctl start docker
systemctl enable docker

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
