#!/bin/bash

sudo hostnamectl --static set-hostname  docker-host
cat /etc/hostname

# install docker
sudo yum  -y install docker

# config docker mirrors
su root
sudo cat <<EOF > /etc/docker/daemon.json
{"registry-mirrors": ["http://9c7eafcc.m.daocloud.io","http://18817714.m.daocloud.io","https://registry.docker-cn.com"]}
EOF

cat /etc/docker/daemon.json

sudo systemctl start docker
sudo systemctl enable docker

sudo docker info | grep -i 'storage driver'

# v1.19.0
# sudo curl -L https://github.com/docker/compose/releases/download/1.19.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
# sudo chmod +x /usr/local/bin/docker-compose

# v1.21.2
sudo curl -L https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# v1.22.0
# sudo curl -L https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
# sudo chmod +x /usr/local/bin/docker-compose

docker-compose --version
