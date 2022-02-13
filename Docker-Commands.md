# Docker-Commands
Main commands used in Docker.

## How to install Docker

**To install Docker, the kernel version has to be equal to or greater than 3.8.**

#### Download and install docker 
```
curl -fsSL https://get.docker.com/ | sh
```
#### Check version
```
docker --version
```
#### Start Docker
```
/etc/init.d/docker start
```


## How to manage Docker container

#### List all running containers
```
docker ps
```

#### Run a container
```
docker run "Image"
```
