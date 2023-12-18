#!/bin/bash
echo "Starting Container...."/n
echo "Runtime arguments: env = ${env}"/n
cp /usr/share/nginx/html/assets/environments/${env}/config.json /usr/share/nginx/html/assets/runtime-environment.json/n
nginx -g 'daemon off;'