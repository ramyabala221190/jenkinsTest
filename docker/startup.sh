#!/bin/bash
echo "Starting container. Runtime env variables: env=${env}"
cp /usr/share/nginx/html/assets/environments/${env}.config.json /usr/share/nginx/html/assets/environments/runtime-environment.json
nginx -g 'daemon off;'