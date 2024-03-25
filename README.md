# DockerSH v1.2.0

> DockerSH is a shell about docker management

English | [简体中文](README.zh-CN.md)

### Framework
```bash
├── dockerSH
├── dockerSH-completion.bash
├── install.sh
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
# Deploy dockerSH(Install docker, add command auto-completion configuration)
./install.sh

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
