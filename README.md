# DockerSH v1.0.0

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

### Deploy docker (Ubuntu 16.04)
`sudo chmod +x deploy.sh && ./deploy.sh`

----------------------------------

### Add run permissions
`sudo chmod +x dockerSH`

### Help information
`./dockerSH -h`

### up redis
`./dockerSH up redis`

### down redis
`./dockerSH down redis`
