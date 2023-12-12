#!/bin/bash
echo "Starting Container..."
echo "env = ${env}"
echo "port = ${port}"
exec "$@" && nginx -g 'daemon off;'
# envsub "/usr/share/nginx/html/assets/runtime-environment.js"
