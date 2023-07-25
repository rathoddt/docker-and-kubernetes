
# MongoDB
```
docker run mongo
```
`exec` - running command inside running container

```
docker exec -it  practical_carson bash
```
`practical_carson ` is name of container

```
docker inspect 791
```
`791` is container id

Inside container
```
cat /usr/local/bin/docker-entrypoint.sh
ls /usr/bin
ls /usr/bin/mongo   #mongo shell binary
```

Launching mongo shell
```
docker exec -it  791  mongosh
```

Inside mongo shell/prompt
```
 db.version()
 show dbs
 use test
 db.animals.insertOne({"Animal": "cat"})
 db.animals.insertOne({"Animal": "dog"})
 db.animals.insertOne({"Animal": "monkey"})
#show all records
db.animals.find()
exit

```
Location of default data file of mongo db
```
docker exec -it  0b  bash
ls data/db
```
Persistent db
```
PWD: /home/cloud_user/docker/mongo
docker run -d -v $PWD/db:/data/db mongo

docker exec -it  72a  bash
#Inside container bash shell
mongosh

# Inside mongo shell
use mydb
db.posts.insert({"post": "hey there"})
db.posts.insert({"post": "How are you"})
db.posts.insert({"post": "Doing well"})
db.posts.find()
```