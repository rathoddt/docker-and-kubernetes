Note image name `nginx` is at last of following command
```
ngloc=/home/cloud_user/docker/containers/nginx
export $ngloc
docker run -d -p 8888:80 -v $ngloc:/usr/share/nginx/html  --name nginx88 nginx

curl localhost:8888

```
Volume mount
```
docker run -it -v $PWD:/app python  python3 /app/hello.py
```
Set working directory
```
docker run -it -v $PWD:/app -w /app  python  python3 hello.py
```

Pulling python image from docker hub
```
docker pull python
docker pull node
```
Simple calander app
```
docker run -it -v $PWD:/app -w /app  python  python3 calendar-app.py
```

Application within simple-app is separte application