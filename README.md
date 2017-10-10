# docker-rss-bridge
Docker build for rss-bridge

Usage: 

## docker

``` 
docker run -v /docker/containers/rssbridge/whitelist.txt:/var/www/html/whitelist.txt:rw - p 80:80 anansii/rss-bridge
```


## docker-compose

```
# docker-compose.yml

version: '3'

services:
  rssbridge:
    image: anansii/rss-bridge
    container_name: rssbridge
    restart: unless-stopped
    volumes:
      - /docker/containers/rssbridge/whitelist.txt:/var/www/html/whitelist.txt:rw
    ports:
      - 80:80

```


