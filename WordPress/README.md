# WordPress
```
docker run -d -p 8080:80 wordpress

hostname -ienv

```
Type `env` inside container shell to get environment variables

or folloeing from terminal
```
docker exec 946 env
```
`946` container id

## MYSQL
```
docker run mysql
docker run --help
```
  `-e, --env list` -   Set environment variables

```
docker run -e MYSQL_ROOT_PASSWORD=my-passwd mysql

# verify the env MYSQL_ROOT_PASSWORD is set or not
docker exec 79f env
```

### phpmyadmn
```
docker pull phpmyadmin

docker run -e MYSQL_ROOT_PASSWORD=my-passwd mysql
docker run --name phpmyadmin -d -e PMA_HOST=172.17.0.2 -p 8080:80 phpmyadmin
# access the phpmyadmin with
user: root
pwd: my-passwd
url: ip:8080

docker exec e22 env
```
`docker run --help`    

### Creating custom network for mysql & mysqlphpadmin
```
docker network create mysql-nw
docker run \
       --network mysql-nw \
       --name mysql-server \
       -e MYSQL_ROOT_PASSWORD=my-passwd \
       -d mysql

docker run \
       --network mysql-nw \
       --name phpmyadmin  \
       -e PMA_HOST=mysql-server \
       -p 8080:80 \
       -d phpmyadmin
```

### Creating custom network for WordPress 
```
docker network create wordpress-nw

docker run \
       --network wordpress-nw \
       -p 8080:80 \
       --name wp-server \
       -d wordpress:5.4

docker run \
       --network wordpress-nw \
       --name mysql-server-wp \
       -e MYSQL_ROOT_PASSWORD=my-passwd \
       -e MYSQL_DATABASE=WP-01 \
       -e MYSQL_USER=wp-user \
       -e MYSQL_PASSWORD=wp-passwd \
       -d mysql:5.7

docker run \
       --network wordpress-nw \
       --name phpmyadmin-wp  \
       -e PMA_HOST=mysql-server-wp \
       -p 8081:80 \
       -d phpmyadmin
```