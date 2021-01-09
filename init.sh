#!/bin/bash

# Program:
#      初始化
# Version:
#      1.0.3
# History:
#      Created on 2018/07/16
#      Last modified on 2021/01/09
# Author:
#      kwkw

. ./tools.sh

# 安装 sudo
if [ "$PM" = "apt" ] && [ "$DISTRO" != "Ubuntu" ]
then
    $PM -y install sudo
fi

# debain
# 设置 sudo
if [ "$PM" = "apt" ]
then
    SUDO="sudo"
else
    SUDO=""
fi

# 安装 docker
# $SUDO $PM -y install docker-ce
$SUDO $PM -y install curl && $SUDO curl -fsSL https://get.docker.com/ | sh

#  修改 docker 镜像仓库
# $SUDO mkdir -p /etc/docker
# $SUDO tee /etc/docker/daemon.json <<-'EOF'
# {
#   "registry-mirrors": ["https://hub-mirror.c.163.com/","https://docker.mirrors.ustc.edu.cn/"]
# }
# EOF
# $SUDO systemctl daemon-reload && $SUDO systemctl restart docker

# 安装 pip
if [ "$PM" = "yum" ]
then
    $PM -y install epel-release
fi
$SUDO $PM -y install python-pip && $SUDO pip install --upgrade pip

# 安装 docker-compose
$SUDO pip install docker-compose

