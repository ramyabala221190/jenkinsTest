#!/bin/bash
echo "Starting Container...."
echo "Runtime arguments: env = ${env}"
cp "/usr/share/nginx/html/assets/environments/${env}/config.json" "/usr/share/nginx/html/assets/config.json"
nginx -g 'daemon off;'
mv /usr/share/nginx/html/assets/config.json? /usr/share/nginx/html/assets/config.json