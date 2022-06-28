# Docker
Main commands used in Docker.



## How to install Docker

**To install Docker, the kernel version has to be equal to or greater than 3.8**

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

Got permission denied while trying to connect to the Docker daemon socket
```
sudo chmod 666 /var/run/docker.sock
```
```
sudo usermod -aG docker ${USER}
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
```
docker run -ti "image"
```
To exit the container without killing her press "Ctrl + P + Q"

#### List all images on your computer
```
docker images
```

#### Back to container
```
docker container attach "CONTAINER ID"
```
To know the container id use the "docker ps" command.

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
-f parameter forces removal.

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
To check the change, use the command:
```
docker inspect "CONTAINER ID " | grep -i cpu
```

#### Change the amount of container CPU
```
docker update --cpu-shared 512 "CONTAINER ID"
```



## Volumes and data-only containers

#### Create a container specifying a volume 
```
docker run -ti -v /volume "image name"
```

#### Show the partitions 
```
df -h
```

#### View host volume location 
```
docker inspect -f {{.Mounts}} "CONTAINER ID"
```

#### Create a container by mapping a specific location on the host
```
docker run -ti -v /root/teste:/volume "image name"
```

#### Create a data-only container
Data-only container volumes will be shared with other containers. This container does not need to be running.
```
docker create -v /data "image name"
```

#### Create a container using the data-only container 
In this example, we will use postgresql.
```
docker run -d -p 5432:5432 --name pgsql --volumeS-from "CONTAINER ID" -e PORTGRESQL_USER=docker -e POSTGRESQL_PASS=docker -e POSTGRESQL_DB=docker kamui/postgresql
```
**The -p parameter specifies the host port and container port: -p hostport:containerport**

**The -e parameter passes the environment variables**

**The --volumes-from parameter imports the volume from another container**



## Network configuration

#### Configure DNS server
```
docker run -ti --dns 8.8.8.8 "image name"
```

#### Configure host-name
```
docker run -ti -hostname "hostname" "image name"
```

#### Link two containers
```
docker run -ti --link container1 --name container2 "image name"
```

#### Expose the container port
```
docker run -ti --expose 80 "image name"
```

#### Port forwarding
```
docker run -ti -p -- publish 8080:80 "image name" 
```
(hostport:containerport)

#### Mac-adress
```
docker run -ti --mac-adress 12:34:de:b0:6b:61 "image name"
```

#### Command host
Host network information will go to container.
```
docker run -ti --net=host "image name"
```
