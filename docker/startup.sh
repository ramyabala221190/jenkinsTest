#!/bin/bash
echo "Starting Container..."
echo "env = ${env}"
echo "port = ${port}"
envsub "/usr/share/nginx/html/assets/runtime-environment.js"
nginx -g 'daemon off;'
