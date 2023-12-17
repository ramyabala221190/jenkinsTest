#!/bin/bash
echo "Starting Container...."
echo "Runtime arguments: env = ${env}"
touch /usr/share/nginx/html/assets/config.json
cp "/usr/share/nginx/html/assets/environments/${env}/config.json" "/usr/share/nginx/html/assets/config.json"
nginx -g 'daemon off;'