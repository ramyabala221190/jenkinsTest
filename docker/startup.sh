#!/bin/bash
echo "Starting Container...."
echo "Runtime arguments: env = ${env}"
cp "/usr/share/nginx/html/assets/environments/${env}/config.json" "/usr/share/nginx/html/assets/runtime-environment.json"
nginx -g 'daemon off;'
