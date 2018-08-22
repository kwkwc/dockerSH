# DockerSH v1.0.1

> DockerSH is a shell about docker manage

### Framework
```
├── deploy.sh
├── dockerSH
├── init.sh
├── README.md
└── services
    ├── gogs
    │   └── docker-compose.yml
    ├── minio
    │   ├── config
    │   │   └── config.json
    │   └── docker-compose.yml
    ├── mongo
    │   └── docker-compose.yml
    ├── mysql
    │   ├── conf.d
    │   │   └── my.cnf
    │   └── docker-compose.yml
    ├── phpmyadmin
    │   └── docker-compose.yml
    ├── redis
    │   └── docker-compose.yml
    └── registry
        └── docker-compose.yml
```

### Usage
```
# Deploy docker(Install docker, modify docker source, install pip, install docker-compose)
# This step is not necessary, consider whether you need to run
./deploy.sh

# Help information
./dockerSH -h

# Up redis
./dockerSH up redis

# Down redis
./dockerSH down redis

# Reup redis
./dockerSH reup redis
```