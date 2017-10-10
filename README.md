# docker-rss-bridge
Docker build for rss-bridge

Usage: 

## docker

``` 
docker run -v /docker/containers/rss-bridge/whitelist.txt:/var/www/html/whitelist.txt:rw - p 80:80 anansii/rss-bridge
```


## docker-compose

```
# docker-compose.yml

version: '3'

services:
  rss-bridge:
    image: anansii/rss-bridge
    container_name: rss-bridge
    restart: unless-stopped
    volumes:
      - /docker/containers/rss-bridge/whitelist.txt:/var/www/html/whitelist.txt:rw
    ports:
      - 80:80

```


