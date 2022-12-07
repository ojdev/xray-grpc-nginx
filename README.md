# 第一步：申请证书

去[https://dash.cloudflare.com/profile/api-tokens](https://dash.cloudflare.com/profile/api-tokens) 将 `Global API Key` 查到的值写入到 `cloudflare.ini`中的`dns_cloudflare_api_key`,并将用户名写到`dns_cloudflare_email`；

修改`certbot.new.sh`文件，后面的域名改为服务的域名

执行`bash certbot.new.sh`，选1回车等待证书申请。

# 第二步：配置nginx

修改 `xray-grpc-nginx/config/nginx/nginx/conf.d/grpc.conf`中证书域名的路径与`server_name`绑定的域名。

修改 `location /photos`处的`photos`为你定义的`serviceName`

# 第三步：配置xray

修改`config/xray/VLESS-GRPC.json`中`"serviceName": "自定义serviceName，与nginx中的配置相同例如: photos"`为上一步中定义的`serviceName`，要保持一致。

# 第四步：启动服务

`docker-compose up -d`

# 第五步：客户端连接

![image](https://user-images.githubusercontent.com/2107833/206098484-3e1105ee-838f-4bd5-b160-d5628d819a38.png)

# 其他

## 更新服务

`docker-compose pull`

`docker-compose up -d`




