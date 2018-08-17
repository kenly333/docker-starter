#!/usr/bin/env bash

# install python
yum install python
python --version

# install python-pip
yum -y install epel-release
yum install python-pip
pip --version

# install git and clone devstack repo
yum install git
git clone https://github.com/edx/devstack.git

# install docker, overlay2 is tested and supported
yum install docker
docker info | grep -i 'storage driver'

# install docker-compose
# sudo curl -L https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
sudo curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
docker-compose --version
