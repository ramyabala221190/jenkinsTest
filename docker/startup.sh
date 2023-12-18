#!/bin/bash
cp /usr/share/nginx/html/assets/environments/${env}/config.json /usr/share/nginx/html/assets/runtime-environment.json
nginx -g 'daemon off;'