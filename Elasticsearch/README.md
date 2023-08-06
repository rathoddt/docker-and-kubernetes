# Elasticsearch 
 Elasticsearch  is a search engine allows you search faster document and indexes. Used in in rea-time search

 ```
 docker run \
       --network es-nw \
       -e "discovery.type=single-node" \
       --name es \
       -p 9200:9200 \
       -d elasticsearch:8.8.0



docker run -it --network es-nw --name curl appropriate/curl sh
 ```

 ## Redis
```
  docker run \
       --network redis \
       --name redis \
       -d redis

  docker run \
       --network redis \
       --name redis-commander \
       -p 8081:8081 \
       -e REDIS_HOSTS=redis \
       -d rediscommander/redis-commander      
```