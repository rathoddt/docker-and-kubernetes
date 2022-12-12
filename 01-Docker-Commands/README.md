
# Docker Commands

## Management Commands
`build` - Manage builds  
`config` - Manage Docker configs  
`container` - Manage containers  
`engine` - Manage the docker engine  
`image` - Manage images   
`network` - Manage networks  
`node` - Manage Swarm nodes  
`plugin` - Manage plugins  
`secret` - Manage Docker secrets  
`service`  - Manage services  
`stack`  - Manage Docker stacks  
`swarm` - Manage Swarm  
`system` - Manage Docker  
`trust`  - Manage trust on Docker images  
`volume` - Manage volumes  

#### Getting help 
`docker -h`  
`docker image --help`  
`docker image ls --help`



## Docker image
`ls` - List images  
`prune` - Remove unused images  
`pull` - Pull an image or a repository from a registry  
`push` - Push an image or a repository to a registry  
`import` - Import the contents from a tarball to create a filesystem image  
`inspect` - Display detailed information on one or more images  
`rm` - Remove one or more images    

Example commands:  
`docker image ls`  
`docker imgae pull nginx`  
`docker image inspect <IMAGE ID>`

## Docker container
`ls` - List containers  
`run` Run a command in a new container  
`top` Display the running processes of a container  
`restart` Restart one or more containers  

`start` Start one or more stopped containers  
`stats` Display a live stream of container(s) resource usage statistics  
`stop` Stop one or more running containers 

`pause` Pause all processes within one or more containers  
`port` List port mappings or a specific mapping for the container  
`prune` Remove all stopped containers  
`rename` Rename a container  

rm Remove one or more containers  

 

unpause Unpause all processes within one or more containers  
update Update configuration of one or more containers  
wait Block until one or more containers stop, then print their exit codes  

Example commands:  
`docker container ls --help`  
`docker container ls`  
`docker container run busybox`  
`docker container ls`  
`docker container ls -a` 
`docker container ps`  
`docker container run -P -d nginx`   
`docker container inspect <CONTAINER ID>`  
`curl http://PRIVATE-IP`   
`docker container top <CONTAINER ID>`  
`docker container attach bf372a68a244`  
`docker container stop <CONTAINER ID>`  
`docker container start <CONTAINER ID>`    
`docker container logs <CONTAINER ID>`  
`curl http://localhost:49154` 
`docker container logs <CONTAINER ID>`  
`docker container stats <CONTAINER ID>`    
`docker container exec -it  <CONTAINER ID>   /bin/bash`    

Inside container  
`root@c3e6e0f20ae4:/# ls /usr/share/nginx/html`  

`docker container exec -it <CONTAINER ID>  ls /usr/share/nginx/html`  
`docker container rm -f <CONTAINER ID>`    
`docker container prune`  

## Creating Container
`run` - Run a command in a new container  

Example:  
`--help` - Print usage  
`--rm` - Automatically remove the container when it exits  
`-d, --detach` - Run container in background and print container ID  
`-i, --interactive` Keep STDIN open even if not attached  
`--name string` - Assign a name to the container  

`-t, --tty` - Allocate a pseudo-TTY  
`-v, --volume list` - Mount a volume (the bind type of mount)    

`docker container run  -d --name test_nginx_01 nginx`

## Exposing and Publishing Ports
Exposing:  
- Expose a port or a range of ports
- This does not publish the port
- Use `--expose [PORT]`  
`docker container run --expose 1234 [IMAGE]`  

Publishing:  
- Maps a container's port to a host`s port
- `-p or --publish` - publishes a container's port(s) to the host  
- `-P, or --publish-all` - publishes all exposed ports to random ports  

`docker container run -p [HOST_PORT]:[CONTAINER_PORT] [IMAGE]`  
`docker container run -p [HOST_PORT]:[CONTAINER_PORT]/tcp -p [HOST_PORT]:[CONTAINER_PORT]/udp [IMAGE]`  
`docker container run -P`  
Lists all port mappings or a specific mapping for a container:

`docker container port [Container_NAME]`  

Example commands:  
`docker container run  -d nginx`  
`curl http://localhost`  
`docker container inspect 8581b422078a`  
`curl http:/172.17.0.3`  
`docker container run  -d --name nginx_server --expose 3000 nginx`  
`docker container run  -d --name nginx_server --expose 3000 -p 80:3000 nginx`  
`curl localhost:80`  
`docker container run  -d --name test_nginx --expose 3000 -p 80:80 nginx`  
`curl localhost`  
`docker container run  -d --name nginx_server -p 8080:80/tcp -p 8081:80/udp nginx` 
`curl localhost:8080`  
`docker container run  -d -P nginx`  
`docker container port 095c20dd4981`  

## Executing Container Commands
Let us see three different ways to execute commands on containers.  
Executing a command:
- Dockerfile
- During a Docker run
- Using the `exec` command

Commands can be:  
- One and done Commands
- Long running Commands

Start a container with a command:  
`docker container run [IMAGE] [CMD]`

Execute a command on a container:  
`docker container exec -it [NAME] [CMD]`  

Example commands:  
`docker container run -d -p 8080:80 nginx`
`docker container ps`
`docker container exec -it [NAME] /bin/bash`
`docker container exec -it [NAME] ls /usr/share/nginx/html/`
Nginx Dockerfile
https://github.com/nginxinc/docker-nginx/blob/baa050df601b5e798431a9db458e16f53b1031f6/mainline/stretch/Dockerfile
