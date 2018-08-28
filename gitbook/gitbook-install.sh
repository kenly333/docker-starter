#!/usr/bin/env bash

# install epel-release
sudo yum -y install epel-release
yum info epel-release

# install nodejs
sudo yum -y install nodejs
node -v

# registry
npm config set registry https://mirrors.huaweicloud.com/repository/npm/
npm cache clean -f

# install gitbook
npm install  -y -g gitbook-cli
gitbook -V

gitbook update

# install plugins
# default: highlight, search, sharing, fontsettings, livereload
gitbook install ./

