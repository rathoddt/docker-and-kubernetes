
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



### docker image
`ls` - List images  
`prune` - Remove unused images  
`pull` - Pull an image or a repository from a registry  
`push` - Push an image or a repository to a registry  
`import` - Import the contents from a tarball to create a filesystem image  
`inspect` - Display detailed information on one or more images  
`rm` - Remove one or more images    

`docker image ls`  
`docker imgae pull nginx`  
`docker image inspect <IMAGE ID>`

### docker container
`ls` - List containers  
`run` Run a command in a new container  
`top` Display the running processes of a container  
`restart` Restart one or more containers  

`start` Start one or more stopped containers  
`stats` Display a live stream of container(s) resource usage statistics  
`stop` Stop one or more running containers 

`pause` Pause all processes within one or more containers  
port List port mappings or a specific mapping for the container  
`prune` Remove all stopped containers  
rename Rename a container  

rm Remove one or more containers  

 

unpause Unpause all processes within one or more containers  
update Update configuration of one or more containers  
wait Block until one or more containers stop, then print their exit codes  

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
