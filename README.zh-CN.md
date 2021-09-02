# DockerSH v1.0.4

> DockerSH 是一个 Shell 实现的 Docker 管理工具

[English](README.md)

### 架构
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

### 使用
```bash
# 安装
git clone https://github.com/kwkwc/dockerSH.git

# 进入工作目录
cd dockerSH

# 此步骤非必需，请考虑是否需要运行
# 部署 Docker(安装 docker, 安装 python3, 安装 pip3, 安装 docker-compose)
./install.sh

# 帮助信息
./dockerSH -h

# 启动容器 containerA
./dockerSH up containerA

# 关闭容器 containerA
./dockerSH down containerA

# 重启容器 containerA
./dockerSH reup containerA
```

### 命令自动补全
```bash
# 临时设置
source dockerSH-completion.bash

# 永久设置
cp dockerSH-completion.bash /etc/bash_completion.d/
```
