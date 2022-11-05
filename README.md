```yml
version: "3"
services:
  xraygrpc:
    #image: xray-nginx:0.0.1
    build: .
    container_name: xray-nginx
    environment:
      - TZ=Asia/Shanghai
    volumes:
      - ./xray:/etc/xray
      - ./nginx/http.d:/etc/nginx/http.d
      - ./letsencrypt/etc:/etc/letsencrypt
    restart: always
    ports:
      - "443:443"
```

or 

`docker build -t xray-nginx:0.0.1 .`

`docker push xray-nginx:0.0.1`
