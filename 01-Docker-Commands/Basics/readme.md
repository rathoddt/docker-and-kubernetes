## Setting up Docker on Ubuntu
```
sudo apt update
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt update
sudo apt install docker-ce -y
```


```
sudo docker version
sudo systemctl status docker
docker --help
docker run  --help
```


```
docker pull nginx
docker images
docker image ls
docker ps -a
docker run -d nginx
docker ps
docker logs 6e8
curl http://localhost
docker stop 6e8
docker ps
docker rm 6e8
docker run -d -p 8080:80 nginx
curl http://localhost
curl http://localhost:8080
docker ps
docker logs a33
docker inspect a33
vim index.html
docker cp index.html a33:/usr/share/nginx/html
docker exec -it a33 sh -c "ls /usr/share/nginx/html"
docker exec -it a33 sh -c "cat /usr/share/nginx/html/index.html"
#volume mount
mkdir /opt/vol
sudo mkdir /opt/vol
ls /opt
sudo mv index.html /opt/vol/
ls /opt/vol/
sudo echo "Testfile for persistent volume" > /opt/vol 
sudo echo "Testfile for persistent volume" > /opt/vol/test.txt 
echo "Testfile for persistent volume" > test.txt 
ls
sudo mv test.txt /opt/vol/
ls /opt/vol/
sudo docker run -v /opt/vol:/usr/share/nginx/html -p 8080:80
docker ps
docker stop a33
sudo shutdown -h now
docker ps
history -w /dev/stdout
history | cut -c 8-
```