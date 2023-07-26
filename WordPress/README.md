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
