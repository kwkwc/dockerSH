#!/bin/bash

# Program:
#      初始化
# Version:
#      1.0.0
# History:
#      Created on 2018/07/16
#      Last modified on 2018/07/16
# Author:
#      kwkw

# ubuntu 16.04

# debain
# 安装 sudo
apt -y install sudo

# 备份源
# sudo mv /etc/apt/sources.list /etc/apt/sources.list.bak$(date -d "today" +"%Y%m%d_%H%M%S")

# 替换源
# sudo sh -c 'echo "deb https://mirrors.ustc.edu.cn/ubuntu/ xenial main restricted universe multiverse\n\
# deb https://mirrors.ustc.edu.cn/ubuntu/ xenial-security main restricted universe multiverse\n\
# deb https://mirrors.ustc.edu.cn/ubuntu/ xenial-updates main restricted universe multiverse\n\
# deb https://mirrors.ustc.edu.cn/ubuntu/ xenial-proposed main restricted universe multiverse\n\
# deb https://mirrors.ustc.edu.cn/ubuntu/ xenial-backports main restricted universe multiverse" >> /etc/apt/sources.list' && \
# sudo apt update

# 安装 docker
sudo apt -y install docker-ce
# sudo apt -y install curl && sudo curl -fsSL https://get.docker.com/ | sh

# 修改 docker 镜像仓库
sudo mkdir -p /etc/docker
sudo tee /etc/docker/daemon.json <<-'EOF'
{
  "registry-mirrors": ["https://docker.mirrors.ustc.edu.cn"]
}
EOF
sudo systemctl daemon-reload && sudo systemctl restart docker

# 安装 pip
sudo apt -y install python-pip && sudo pip install --upgrade pip

# 安装 docker-compose
sudo pip install docker-compose

