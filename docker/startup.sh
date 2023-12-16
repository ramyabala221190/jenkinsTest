#!/bin/bash
echo "Starting Container..."
echo "Runtime arguments: env = ${env}"
echo "Runtime arguments: port = ${port}"
cp ${env}.conf.json /usr/share/nginx/html/assets/runtime-environment.json
nginx -g 'daemon off;'