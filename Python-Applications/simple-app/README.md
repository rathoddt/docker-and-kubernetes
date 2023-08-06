
```
docker build -t gcr.io/playground-s-11-cf99bda5/simple-app/py-app:v1.0 .

docker run -p 9090:8080  -t gcr.io/playground-s-11-cf99bda5/simple-app/py-app:v1.0 

docker push gcr.io/playground-s-11-cf99bda5/simple-app/py-app:v1.0
#Make some changes main.py
docker build -t gcr.io/playground-s-11-cf99bda5/simple-app/py-app:v2.0 .
docker push gcr.io/playground-s-11-cf99bda5/simple-app/py-app:v2.0

```