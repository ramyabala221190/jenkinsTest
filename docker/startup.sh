#!/bin/bash
echo "Starting Container..."
echo "Runtime arguments: env = ${env}"
echo "Runtime arguments: port = ${port}"
cp /usr/share/nginx/html/assets/environments/${env}/config.json /usr/share/nginx/html/assets/
nginx -g 'daemon off;'