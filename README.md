# DockerSH v1.0.3

> DockerSH is a shell about docker management

[简体中文](README.zh-CN.md)

### Framework
```bash
├── deploy.sh
├── dockerSH
├── dockerSH-completion.bash
├── init.sh
├── tools.sh
├── README.md
└── services
    ├── containerA
    │   └── docker-compose.yml
    └── containerB
        └── docker-compose.yml
```

### Usage
```bash
# Install
git clone https://github.com/kwkwc/dockerSH.git

# Working directory
cd dockerSH

# This step is not necessary, consider whether you need to run
# Deploy docker(Install docker, install pip, install docker-compose)
./deploy.sh

# Help information
./dockerSH -h

# Up containerA
./dockerSH up containerA

# Down containerA
./dockerSH down containerA

# Reup containerA
./dockerSH reup containerA
```

### Commands auto-complement
```bash
# Temporary setting
source dockerSH-completion.bash

# Permanent setting
cp dockerSH-completion.bash /etc/bash_completion.d/
```