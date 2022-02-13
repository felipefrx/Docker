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

#### List all containers on the machine 
```
docker ps -a
```

#### Run a container
If the image is not downloaded from your local repository, it will be downloaded from the docker website.
```
docker run "image"
```

#### Run the container with the terminal 
To exit the container without killing her press "Ctrl + P + Q"
```
docker run -ti "image"
```

#### List all images on your computer
```
docker images
```

#### Back to container
To know the container id use the "docker ps" command.
```
docker attach "CONTAINER ID"
```

#### Stop the container
```
docker stop "CONTAINER ID"
```

#### Start the container
```
docker start "CONTAINER ID"
```

#### Pause the container
```
docker pause "CONTAINER ID"
```

#### Unpause the container
```
docker unpause "CONTAINER ID"
```

#### Container consumption
It shows consumption of CPU, Memory, network I/O and block I/O.
```
docker stats "CONTAINER ID"
```

#### Running processes
```
docker top "CONTAINER ID"
```

#### Logs processes
```
docker logs "CONTAINER ID"
```

#### Remove the container
```
docker rm "CONTAINER ID"
```

#### Remove the running container
```
docker rm -f "CONTAINER ID"
```

#### Remove images
To view the image id use the command "docker images"
```
docker rmi "IMAGE ID"
```
