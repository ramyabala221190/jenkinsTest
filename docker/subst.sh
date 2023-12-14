#!/bin/bash
envsub /usr/share/nginx/html/assets/runtime-environment.json
echo "Starting Container..."
echo "env = ${env}"
echo "port = ${port}"
nginx -g 'daemon off;'