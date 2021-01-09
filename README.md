# DockerSH v1.0.3

> DockerSH is a shell about docker manage

### Framework
```
├── deploy.sh
├── dockerSH
├── init.sh
├── README.md
└── services
    ├── containerA
    │   └── docker-compose.yml
    └── containerB
        └── docker-compose.yml
```

### Usage
```
# Install
git clone https://github.com/kwkwc/dockerSH.git

# Working directory
cd dockersh

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