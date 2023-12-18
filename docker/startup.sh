#!/bin/bash
cp /usr/share/nginx/html/assets/environments/${env}.config.json /usr/share/nginx/html/assets/environments/runtime-environment.json
nginx -g 'daemon off;'