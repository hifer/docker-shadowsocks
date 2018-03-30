# docker-shadowsocks

## 使用：
docker run -d --restart=unless-stopped -p 8888:8888 -e "server=10.10.10.10" hifer/shadowsocks

## 环境变量列表：
参数名 | 释义 |
- | :-: |
server | 公网ip地址 默认0.0.0.0 |
server_port | 服务端口，默认8888 程序内部端口（例子中的8888），客户端连接使用主机映射端口（例子中的7777） |
local_address | 本机ip地址，默认127.0.0.1 |
local_port | 客户端代理端口，默认1080 |
password | 密码，默认password |
method | 加密，默认aes-256-cfb |
timeout | 超时，默认300s |
workers | 工作线程，默认5 |
