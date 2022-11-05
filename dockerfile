FROM teddysun/xray:latest

RUN apk add --no-cache nginx

CMD [ "/usr/bin/xray", "-config", "/etc/xray/config.json" ]
