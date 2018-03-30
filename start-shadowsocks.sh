#!/usr/bin/env sh

server=${server:-'0.0.0.0'}
server_port=${server_port:-8888}
local_address=${local_address:-'127.0.0.1'}
local_port=${local_port:-1080}
password=${password:-'password'}
method=${method:-'aes-256-cfb'}
timeout=${timeout:-300}
workers=${workers:-5}

cat > /etc/shadowsocks.json  <<EOF
{
    "server":"$server",
    "server_port":$server_port,
    "local_address":"$local_address",
    "local_port":$local_port,
    "password":"$password",
    "timeout":$timeout,
    "method":"$method",
    "fast_open":false,
    "workers":$workers
}
EOF

ssserver -c /etc/shadowsocks.json start

