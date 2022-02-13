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
The --name parameter gives the container a name.
```
docker run "image" --name example
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



## Limit CPU and memory

#### All container information 
```
docker inspect "CONTAINER ID"
```

#### View container memory
```
docker inspect "CONTAINER ID " | grep -i mem
```

#### Create a container with limited momery
```
docker run -ti --memory 512m --name "teste" "image name"
```
Remembering that the -ti parameter is used to start the container in the terminal and the --name to name the container, followed by the image.

#### Change the amount of container memory  
```
docker upadate -m 256m "CONTAINER ID"
```
To check the change, use the command:
```
docker inspect "CONTAINER ID " | grep -i mem
```

#### Create a container with limited CPU
```
docker run -ti --cpu-shares 1024 --name "teste" "image name"
```
