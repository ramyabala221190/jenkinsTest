#!/bin/bash
echo "Starting Container..."
echo "name = ${name}"
echo "port = ${port}"
envsubst '$env,$port' < "/usr/share/nginx/html/assets/runtime-environment.js" > "/usr/share/nginx/html/assets/runtime-environment.js"
nginx -g 'daemon off;'
