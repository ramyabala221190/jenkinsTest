#!/bin/bash
echo "Starting Container..."
echo "Runtime arguments: env = ${env}"
echo "Runtime arguments: port = ${port}"
cp -f /usr/share/nginx/html/assets/${env}.config.json /usr/share/nginx/html/assets/runtime-environment.json
nginx -g 'daemon off;'