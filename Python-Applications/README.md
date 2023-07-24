Note image name `nginx` is at last of following command
```
ngloc=/home/cloud_user/docker/containers/nginx
export $ngloc
docker run -d -p 8888:80 -v $ngloc:/usr/share/nginx/html  --name nginx88 nginx

curl localhost:8888

```