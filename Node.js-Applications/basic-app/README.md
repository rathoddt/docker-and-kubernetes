# Docker Node JS App

Working directory `/home/cloud_user/docker/node-app`

```
docker run -it -v $PWD:/app -w /app node node hello.js
```
Initialize app with defaults

```
docker run -it -v $PWD:/app -w /app node npm init
```