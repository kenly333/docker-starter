#!/usr/bin/env bash

# install python
yum install python
python --version

# 安装EPEL软件源
yum -y install epel-release

# install python-pip
yum install python-pip
pip --version
