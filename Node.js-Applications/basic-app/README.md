# Docker Node JS App

Working directory `/home/cloud_user/docker/node-app`

```
docker run -it -v $PWD:/app -w /app node node hello.js
```
Initialize app with defaults

```
pwd: /home/cloud_user/docker/node-app/express
docker run -it -v $PWD:/app -w /app node npm init
docker run -it -v $PWD:/app -w /app node npm install express
docker run -it -p 3000:3000  -v $PWD:/app -w /app node node index.js
```


```
pwd: /home/cloud_user/docker/node-app/files
docker run -it -p 3000:3000  -v $PWD:/app -w /app node node index.js
```