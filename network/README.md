# Docker Networking
<b>Hostname </b> - is internal hostname of the container  (`-h, --hostname string`).
<br> <b>Name</b>  - is external docker name for container (`--name`)

by defualt bridge network containers can't communicate using `hostname` or `names`  .

```
docker run -it --name busybox1 -h busybox-one busybox
docker network --help
docker network ls
docker network inspect bridge
docker network inspect iot
docker network create iot

```

Container in the custom network `iot` can communicate with each other using `hostnames` and `names`

```
docker run -it --network iot --name busybox2 busybox
```