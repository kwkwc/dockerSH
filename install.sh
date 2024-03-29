#!/bin/bash

# Program:
#      Install
# Version:
#      1.0.7
# History:
#      Created on 2018/07/16
#      Last modified on 2023/09/05
# Author:
#      kwkw


echo_log()
{
    echo $(date +"%Y-%m-%d %H:%M:%S") $1
}

echo_log "Loading tools..."
. ./tools.sh

echo_log "Install sudo..."
$PM -y install sudo

echo_log "Set sudo"
SUDO="sudo"

echo_log "Install docker..."
$SUDO $PM -y install curl && $SUDO curl -fsSL https://get.docker.com/ | sh

echo_log "Start docker..."
$SUDO systemctl start docker

echo_log "Set up docker to boot"
$SUDO systemctl enable docker

# Install epel-release
if [ "$PM" = "yum" ]
then
    echo_log "Install epel-release..."
    $SUDO $PM -y install epel-release
fi

echo_log "Install bash-completion..."
$SUDO $PM -y install bash-completion

echo_log "Copy dockerSH-completion.bash"
$SUDO cp dockerSH-completion.bash /etc/bash_completion.d/

# Set bash completion in zsh
echo $SHELL | grep zsh > /dev/null
if [ $? -eq 0 ]
then
    echo_log "Set bash completion in zsh"
    cat << EOF >> ~/.zshrc

# dockerSH
autoload bashcompinit
bashcompinit
source /etc/bash_completion.d/dockerSH-completion.bash
EOF
fi
